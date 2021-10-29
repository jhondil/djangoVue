from django.http.response import HttpResponseNotFound
from django.shortcuts import reverse, render, redirect, get_object_or_404
from django.views.generic import (DetailView)
from django.contrib.auth.decorators  import login_required
from django.views.decorators.http import require_POST
from django.conf import settings
from django.utils import timezone
from django.http import HttpResponseNotFound


from applications.Listelement.models import Element,Category
from django.core.paginator import Paginator

from .forms import *


from paypalcheckoutsdk.core import PayPalHttpClient, SandboxEnvironment
from paypalcheckoutsdk.orders import OrdersCreateRequest,OrdersCaptureRequest
from paypalhttp import HttpError

from .models import *



# Create your views here.


def index (request):
    

    search =request.GET.get('search') if request.GET.get('search') else ''
    category_id = request.GET.get('category_id')
    category_id= int(category_id) if category_id else ''

    if search:
        elements =  Element.objects.filter(title__contains=search)
    else:
        elements =  Element.objects

    if category_id:
        elements =  elements.filter(category_id=category_id)


    elements =  elements.all()
    category =  Category.objects.all()

    paginator = Paginator(elements,5)

    page_number = request.GET.get('page')
    elements_page = paginator.get_page(page_number)
    return render(request,'store/index.html', {'elements': elements_page,'category': category,'search': search, 'category_id':category_id })


def detail(request,url_clean,code=None):

    # print(code)
    # if code == None:
    #     print(code)

    cupon = get_valid_cupon(code) if code else None
    msj_cupon = ''
    if (code == 'None' or cupon is None) and code is not None :
        msj_cupon = 'Cupón invalido'
        code = ''


    element = get_object_or_404(Element, url_clean = url_clean)
    #mensajes que tienen configudos los elementos
    message= element.element_cooments.filter(activate=True)
    message_form= MessageForm()
    cupon_form= CuponForm(initial={'element_id':element.id,'code':code })

    message_new=None

    if request.method == 'POST': #recibiendo el formulario
        message_form =MessageForm(data=request.POST)
        if message_form.is_valid():
            message_new =message_form.save(commit=False)
            message_new.element = element
            #comentario por usuario
            # if request.user.is_authenticated:
            message_new.save()
            message_form= MessageForm() #para cuando guarde boore lo que hay en el form(data)

    return render(request,'store/detalleElement.html',{'element':element,
                                                        'message_form':message_form,
                                                        'message_new':message_new,
                                                        'message':message,
                                                        'cupon_form':cupon_form,
                                                        'cupon':cupon,
                                                        'msj_cupon':msj_cupon
    })


@require_POST  #para que sea accedida solo mediante post
def cuponApply(request):
    
    form = CuponForm(request.POST)
    cupon=None
    
    if form.is_valid():
        code = form.cleaned_data['code']
        elementId = form.cleaned_data['element_id']

    #si el cupon es valido

    try:
        cuponModel = get_valid_cupon(code)

        if cuponModel:
            cupon = cuponModel.code

    except Cupon.DoesNotExist:
        pass

    #si el elemento es valido
    try:
        element = Element.objects.get(id=elementId) 
    except Element.DoesNotExist:
        cupon=None

    return redirect('store:detalle',url_clean=element.url_clean, code=cupon)


class DetailsElement(DetailView):
    model = Element
    template_name='store/detalleElement.html'
    slug_field = 'url_clean'
    slug_url_kward = 'url_clean'


@login_required
def make_pay_paypal(request,pk, code=None):
    #validar el cupon
    cupon = get_valid_cupon(code) if code else None

    #cupon invalido

    if cupon is None and code is not None:
        #aca se puede redirigir a una pagina de 404
        print('entro acá')
        return HttpResponseNotFound()

    element= get_object_or_404(Element, pk = pk)

    if cupon: 
        return_url =  f"https://testdjango.com:8000/product/paypal/success/{element.id}/{cupon.code}"
        # return_url =  "http://127.0.0.1:8000/product/paypal/success/%s/%s"%(element.id,cupon.code)
        price= round(element.get_price_after_discount(cupon),2)
    else:
        return_url =  f"https://testdjango.com:8000/product/paypal/success/{element.id}"
        price= element.price  
    
    # Creating Access Token for Sandbox
    client_id = settings.PAYPAL_CLIENT_ID
    client_secret = settings.PAYPAL_CLIENT_SECRET
    # Creating an environment
    environment = SandboxEnvironment(client_id=client_id, client_secret=client_secret)
    client = PayPalHttpClient(environment)
    
    
    requestPaypal = OrdersCreateRequest()

    requestPaypal.prefer('return=representation')

    requestPaypal.request_body (
        {
            "intent": "CAPTURE",
            "purchase_units": [
                {
                    "amount": {
                        "currency_code": "USD",
                        "value": str(price),
                    }
                }
            ],
            "application_context":{
                "return_url": return_url,
                "cancel_url": "http://127.0.0.1:8000/produt/paypal/cancel"
            }
        }
    )
    
    try:
        response=client.execute(requestPaypal)

        if response.result.status == "CREATED":
            
            approval_url=str(response.result.links[1].href)
            print (approval_url)
            return render(request, 'store/paypal/buy.html',{'element':element,'approval_url':approval_url})

    except IOError as ioe:
        
        print (ioe)
        if isinstance(ioe, HttpError):
            # Something went wrong server-side
            print (ioe.status_code)


@login_required
def paypal_success(request, pk, code=None):

    cupon = get_valid_cupon(code) if code else None


    # Creating Access Token for Sandbox
    client_id = settings.PAYPAL_CLIENT_ID
    client_secret = settings.PAYPAL_CLIENT_SECRET
    # Creating an environment
    environment = SandboxEnvironment(client_id=client_id, client_secret=client_secret)
    client = PayPalHttpClient(environment)

    element = get_object_or_404(Element, pk=pk)

    ordenId = request.GET.get('token')
    payerid = request.GET.get('PayerID')

    requestPaypal = OrdersCaptureRequest(ordenId)

    try:
        # if requestPaypal.excecute({'payer_id':payerid}):
        response = client.execute(requestPaypal)

        paymentModel = Payment.create (
            payment_id=ordenId, 
            payer_id= payerid,
            price=element.price,
            element_id=element.id,
            user_id=request.user.id
        )

        if cupon:
            paymentModel.cupon= cupon
            paymentModel.discount = element.get_price_after_discount(cupon)
            paymentModel.price_discount= element.get_discount(cupon)
            cupon.active=0
            cupon.save()

        paymentModel.save()

        return redirect(reverse('store:datail_pay', args=[paymentModel.id]))

            # If call returns body in response, you can get the deserialized version from the result attribute of the response
        order = response.result.id
    except IOError as ioe:
        if isinstance(ioe, HttpError):
            # Something went wrong server-side
            print (ioe.status_code)
            print (ioe.headers)
            print (ioe)
        else:
            # Something went wrong client side
            print (ioe)

    return render(request, 'store/paypal/success.html')


@login_required
def datail_pay(request, pk):
    payment= get_object_or_404(Payment, pk=pk)
    return render(request, 'store/payment/detail-payed.html', {'payment': payment})


@login_required
def bought(request):
    return render(request, 'store/payment/bought.html', {'payments': Payment.objects.select_related('element').filter(user=request.user)})


@login_required
def paypal_cancel(request):

    return render(request, 'store/paypal/cancel.html')


def get_valid_cupon(code):
    now = timezone.now()

    cupon= None
    try:

        cuponModel = Cupon.objects.get(code__iexact=code, #iexact que sea exacto el valor 
                valid_from__lte=now, #less than or equal to = menor igual a= la fecha  es igual o menor a la fecha del cupon
                valid_to__gte=now, #great than or equal to = mayyor igual a= la fecha  es igual o mayor a la fecha del cupon
                active=True
        ) 

        cupon=cuponModel

    except Cupon.DoesNotExist:
        pass

    return cupon