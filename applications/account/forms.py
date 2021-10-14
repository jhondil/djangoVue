from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms
from django.core.exceptions import ValidationError
from django.core.files.images import get_image_dimensions

from applications.account.models import UserProfile

class CustomUserCreationForm(UserCreationForm):

    email = forms.EmailField(label='email', max_length=50)

    def clean_email(self):
        email = self.cleaned_data['email'].lower()
        u = User.objects.filter(email = email)
        if u.count():

            raise ValidationError('email ya esta registrado')

        return email


    def save(self, commit=True):
        user = User.objects.create_user(
            self.cleaned_data['username'],
            self.cleaned_data['email'],
            self.cleaned_data['password1'],
        )
        return user


class UserProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields= ('avatar', 'user')

    def __init__(self,*args, **kwargs):
        super(UserProfileForm,self).__init__(*args, **kwargs)
        self.fields['user'].widget = forms.HiddenInput()
        self.fields['user'].required=False


    def clean_avatar(self):

        avatar=self.cleaned_data['avatar']
        w,h = get_image_dimensions(avatar)
        max_width = max_height = 4000

        #validaciones
        if w >max_width or h >max_height:
            raise forms.ValidationError('imagen grande')

        m,t = avatar.content_type.split('/')

        if not (m=='image' and t in ['jpeg', 'jpg', 'png']):
            raise forms.ValidationError('no es tipo de imagen')

        return avatar
