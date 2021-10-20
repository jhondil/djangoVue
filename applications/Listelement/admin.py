from django.contrib import admin
from .models import *

# Register your models here.

class TypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'title')
    
    
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'title')
    
class ElementImagesLines(admin.StackedInline):
    model = ElementeImages
    extra=3
class ElementAdmin(admin.ModelAdmin):

    list_display = ('id', 'title')
    inlines = [ElementImagesLines]





admin.site.register(Type, TypeAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(Element, ElementAdmin)