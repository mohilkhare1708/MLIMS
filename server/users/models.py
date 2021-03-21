from django.db import models
from django.contrib.auth.models import User 
from products.models import WareHouse

class Profile(models.Model):
    user = models.OneToOneField(User,on_delete = models.CASCADE)
    warehouse = models.ForeignKey(WareHouse, null=True,blank=True , on_delete=models.SET_NULL)
    is_admin = models.BooleanField(default=False)
    
    def __str__(self):
        return f'{self.user.username} Profile'
