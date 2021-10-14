import os

from django.conf import settings

from django.shortcuts import render,redirect,reverse
# from django.contrib.auth.forms import UserCreationForm
from .forms import CustomUserCreationForm, UserProfileForm
from django.contrib.auth import login

from django.core.exceptions import  ObjectDoesNotExist

from .models import *

# Create your views here.

def user_data(request):

    form=UserProfileForm()
    if request.method == 'POST':

        try:
            Userprofile = UserProfile.objects.get(user=request.user)
            form = UserProfileForm(request.POST, request.FILES, instance=Userprofile)
            
            pathOldAvatar = os.path.join(settings.MEDIA_ROOT, Userprofile.avatar.name)

        except ObjectDoesNotExist:
            form = UserProfileForm(request.POST, request.FILES)
        if form.is_valid():

            if pathOldAvatar is not None and os.path.isfile(pathOldAvatar):
                os.remove(pathOldAvatar)
            userprofile = form.save(commit=False)
            userprofile.user = request.user 
            userprofile.save()


    return render(request,'user_data.html',{'form':form})


def register(request):
    form = CustomUserCreationForm()

    if request.method == 'POST':
        form = CustomUserCreationForm(data=request.POST)

        if form.is_valid():
            user = form.save()
            if user is not None:
                login(request,user)
                return redirect(reverse('account:p'))

            # return redirect(reverse('login'))

    return render(request,'register.html',{'form':form})