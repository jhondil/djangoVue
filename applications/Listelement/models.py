from django.db import models

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
    
    def __str__(self):
        return self.title
