from django.shortcuts import reverse, render, redirect, get_object_or_404
from django.conf import settings

from applications.Listelement.models import Element,Category
from django.core.paginator import Paginator
from django.views.generic import (DetailView)

from django.contrib.auth.decorators  import login_required

from paypalcheckoutsdk.core import PayPalHttpClient, SandboxEnvironment
from paypalcheckoutsdk.orders import OrdersCreateRequest,OrdersCaptureRequest
from paypalhttp import HttpError

from .models import Payment

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


    elements =  elements.filter(type=1)
    category =  Category.objects.all()

    paginator = Paginator(elements,5)

    page_number = request.GET.get('page')
    elements_page = paginator.get_page(page_number)
    return render(request,'store/index.html', {'elements': elements_page,'category': category,'search': search, 'category_id':category_id })


class DetailsElement(DetailView):
    model = Element
    template_name='store/detalleElement.html'
    slug_field = 'url_clean'
    slug_url_kward = 'url_clean'
    
    
@login_required    
def make_pay_paypal(request,pk):
    element= get_object_or_404(Element, pk = pk)
    
    
    
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
                        "value": str(element.price),
                    }
                }
            ],
            "application_context":{
                "return_url": "http://127.0.0.1:8000/product/paypal/success/%s"%element.id,
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
def paypal_success(request, pk):
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