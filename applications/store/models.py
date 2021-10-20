from django.db import models
from django.contrib.auth.models import User
from applications.Listelement.models import Element

# Create your models here.


class Payment(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(auto_now_add=True)    
    payment_id = models.CharField( max_length=255)
    payer_id = models.CharField( max_length=255)

    price = models.DecimalField(max_digits=10,decimal_places=2, default=60.00)
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    element = models.ForeignKey(Element, on_delete=models.CASCADE)
    

    @classmethod
    def create(cls,payment_id, payer_id, price,user_id,element_id ):
        payment=cls(
            payment_id=payment_id, 
            payer_id= payer_id,
            price=price,
            element_id=element_id,
            user_id=user_id
        )
        return payment

    def __str__(self):
        return self.price


class Message(models.Model):
    element= models.ForeignKey(Element, on_delete=models.CASCADE, related_name='element_cooments')
    name = models.CharField(max_length=30)
    lastname = models.CharField(max_length=30)
    email = models.EmailField()
    body = models.TextField()
    created=models.DateTimeField(auto_now_add=True)
    updated=models.DateTimeField(auto_now=True)
    activate = models.BooleanField(default=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)

    class Meta:
        ordering=('created',)
    def __str__(self):
        return "Comentario de {self.name} en {self.element}"