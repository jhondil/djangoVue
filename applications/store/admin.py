from django.contrib import admin
from .models import *

@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    list_display = ('name', 'email','element','created','activate')
    list_filter = ('activate','created','updated')
    search_fields = ('name','email','body')


@admin.register(Cupon)
class CuponAdmin(admin.ModelAdmin):
    list_display = ('code', 'valid_from','valid_to','discount','active')
    list_filter = ('active','valid_from','valid_to')
    search_fields = ('code',)