from django.db import models
from django.contrib.auth.models import User 
from products.models import Product
from .utils import generate_socket_token

class Customer(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField()
    phone_number = models.CharField(max_length=12)

    def __str__(self):
        return self.name 

class Order(models.Model):
    order_date = models.DateTimeField()
    completed = models.BooleanField()
    socket = models.CharField(max_length=20, default=generate_socket_token ,unique=True)
    # Foreign Key
    customer = models.ForeignKey(Customer , on_delete = models.SET_NULL , null = True , blank = True)
    agent = models.ForeignKey(User , on_delete = models.SET_NULL , null = True , blank = True)

    def __str__(self):
        return self.customer.name  


class OrderItem(models.Model):
    # Foreign key 
    product = models.ForeignKey(Product , on_delete = models.SET_NULL , null = True , blank = True)
    order = models.ForeignKey(Order , on_delete = models.SET_NULL , null = True , blank = True)

    def __str__(self):
        return f"{self.product}"

