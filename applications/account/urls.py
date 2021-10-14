
from django.urls import path,include
from . import views

app_name='account'

urlpatterns = [

    path('profile/', views.user_data, name='p'),
    path('register/', views.register, name='register'),


]
