from django.db import models
from django.contrib.auth.models import User
from applications.Listelement.models import Element

# Create your models here.


class Payment(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(auto_now_add=True)    
    payment_id = models.CharField( max_length=255)
    payer_id = models.CharField( max_length=255)

    price = models.DecimalField(max_digits=10,decimal_places=2, default=60.0)
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    element = models.ForeignKey(Element, on_delete=models.CASCADE)
    
    def __init__(self,payment_id, payer_id, price,user_id,element_id ):
        super(Payment, self).__init__()
        self.payment_id = payment_id
        self.payer_id = payer_id
        self.price = price
        self.user = user_id
        self.element = element_id
    
    def __str__(self):
        return self.price
