from django.db import models
from decimal import Decimal
# from stdimage import StdImageField, JPEGField

from django.dispatch import receiver

import os

# Create your models here.

class Category(models.Model):
    title = models.CharField( max_length=255)
    url_clean = models.CharField( max_length=255)
    
    def __str__(self):
        return self.title
    
class Type(models.Model):
    title = models.CharField( max_length=255)
    url_clean = models.CharField( max_length=255)

    def __str__(self):
        return self.title

class Element(models.Model):
    title = models.CharField( max_length=255)
    url_clean = models.CharField( max_length=255)
    description = models.TextField()
    price = models.DecimalField(max_digits=10,decimal_places=2, default=60.0)
    #un elemento va apermanecer a una categoria
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    #para activar cierto campo
    type = models.ForeignKey(Type, on_delete=models.CASCADE)

    def get_discount(self,cupon):
        return (cupon.discount / Decimal(100))* self.price  #  10/100 = 0.1* 10= 1

    def get_price_after_discount(self,cupon):
        return self.price - self.get_discount(cupon)

    
    def __str__(self):
        return self.title


class ElementeImages(models.Model):
    element = models.ForeignKey(Element, on_delete=models.CASCADE)
    title = models.CharField(max_length=255)
    cover= models.ImageField(upload_to='images/')


    def __str__(self):
        return self.title # TODO


@receiver(models.signals.post_delete,sender=ElementeImages)
def auto_delete_file_on_delete(sender,instance, **kwargs):
    if instance.cover:
        if os.path.isfile(instance.cover.path):
            os.remove(instance.cover.path)


@receiver(models.signals.pre_save,sender=ElementeImages)
def auto_delete_file_on_delete(sender,instance, **kwargs):

    if not instance.pk:
        return False

    try:

        old_file = ElementeImages.objects.get(pk=instance.pk).cover

    except ElementeImages.DoesNotExist:
        return False

    new_file = instance.cover

    if not old_file == new_file:
        if instance.cover:
            if os.path.isfile(old_file.path):
                os.remove(old_file.path)