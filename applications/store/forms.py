from .models import *
from django import forms


class MessageForm(forms.ModelForm):
    class Meta:
        model = Message
        fields = ('name', 'email','body')


class CuponForm(forms.Form):
    code= forms.CharField()
    element_id= forms.CharField(widget=forms.HiddenInput())
