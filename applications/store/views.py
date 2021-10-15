from django.shortcuts import render, get_list_or_404

from applications.Listelement.models import Element,Category
from django.core.paginator import Paginator
from django.views.generic import (DetailView)

from django.contrib.auth.decorators  import login_required

from paypalcheckoutsdk.core import PayPalHttpClient, SandboxEnvironment
from paypalcheckoutsdk.orders import OrdersCreateRequest
from paypalhttp import HttpError

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


class DetailsElement(DetailView):
    model = Element
    template_name='store/detalleElement.html'
    slug_field = 'url_clean'
    slug_url_kward = 'url_clean'
    
    
@login_required    
def make_pay_paypal(request,pk):
    element= get_list_or_404(Element, pk = pk)
    
    
    
    # Creating Access Token for Sandbox
    client_id = setting.PAYPAL_CLIENT_ID
    client_secret = setting.PAYPAL_CLIENT_SECRET
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
                        "value": srt(price)
                    }
                }
            ],
            "application_context":{
                "return_url": 
                "cancel_url": 
            }
        }
    )
    
    try:
    # Call API with your client and get a response for your call
    
        if response.result.status == "CREATED":
            
            approval_url=str(response.result.links[1].href)
            return render(request, 'store/paypal/buy.html',{'element':element,'approval_url':approval_url})
       
    except IOError as ioe:
        print ioe
        if isinstance(ioe, HttpError):
            # Something went wrong server-side
            print ioe.status_code
                

@login_required   
def paypal_success(request):
    return render(request, 'store/paypal/success.html')


@login_required   
def paypal_cancel(request):
    return render(request, 'store/paypal/cancel.html')