from django.urls import path

from rest_framework import routers, urlpatterns

from .viewsets import *

route = routers.SimpleRouter()
route.register('element', ElementViewSet) #'element' aprte de la ruta
route.register('type', TypeViewSet) #'element' aprte de la ruta
route.register('category', CategoryViewSet) #'element' aprte de la ruta

urlpatterns = route.urls