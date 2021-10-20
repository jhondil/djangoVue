
from django.urls import path,include
from . import views

app_name='store'

urlpatterns = [

    path('', views.index, name='inicio'),
    path('product/<int:pk>', views.DetailsElement.as_view(), name='detalle'),
    path('product/<slug:url_clean>', views.DetailsElement.as_view(), name='detalle'),
    path('product/<int:pk>/<slug:url_clean>', views.DetailsElement.as_view(), name='detalle'),
    
    #paypal

    path('product/pay/paypal/<int:pk>', views.make_pay_paypal, name='make_pay_paypal'),
    path('product/paypal/success/<int:pk>', views.paypal_success, name='paypal_success'),
    path('product/paypal/cancel', views.paypal_cancel, name='paypal_cancel'),


    path('product/payed/detail/<int:pk>', views.datail_pay, name='datail_pay'),

    path('bought/', views.bought, name='bought'),




]
