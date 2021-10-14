
from django.urls import path,include
from . import views

app_name='store'

urlpatterns = [

    path('', views.index, name='inicio'),
    path('product/<int:pk>', views.DetailsElement.as_view(), name='detalle'),
    path('product/<slug:url_clean>', views.DetailsElement.as_view(), name='detalle'),
    path('product/<int:pk>/<slug:url_clean>', views.DetailsElement.as_view(), name='detalle'),



]
