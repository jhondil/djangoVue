"""djangoVue URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path,include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('applications.Listelement.urls')),
    path('accounts/', include('applications.account.urls')),
    path('', include('applications.store.urls')),
    path('accounts/', include('django.contrib.auth.urls')),
    path('social-auth/', include('social_django.urls', namespace='social')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

# https://testdjango.com:8000/social-auth/complete/google-oauth2/
# https://testdjango.com:8000/social-auth/complete/facebook/
# https://testdjango.com:8000/social-auth/complete/live/
# https://testdjango.com:8000/social-auth/complete/azuread-oauth2/
# https://testdjango.com:8000/social-auth/complete/azuread-tenant-oauth2/

