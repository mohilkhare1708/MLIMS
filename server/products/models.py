from django.db import models
from datetime import datetime , date

class Brand(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()

    def __str__(self):
        return self.name 


class Category(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(default = 'default.jpg',upload_to = 'category')

    def __str__(self):
        return self.name 

class ProductModel(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    company = models.ForeignKey(Brand, on_delete=models.CASCADE)
    mrp = models.DecimalField(max_digits=20, decimal_places=2, default=0.0)
    image = models.ImageField(default = 'default.jpg',upload_to = 'products')

    def __str__(self):
        return self.name

class WareHouse(models.Model):
    name = models.CharField(max_length = 200)
    description = models.TextField()
    region = models.CharField(max_length=200)
    address1 = models.CharField(max_length = 300)
    address2 = models.CharField(max_length=500)
    latitude =  models.DecimalField(max_digits=20, decimal_places=8, default=0.0)
    longitude = models.DecimalField(max_digits=20, decimal_places=8, default=0.0)

    def __str__(self):
        return self.name 

class Product(models.Model):
    buying_date = models.DateTimeField(default=datetime.now)
    selling_date = models.DateTimeField(default=datetime.now)
    is_sold = models.BooleanField(default = False)
    is_listed = models.BooleanField(default=False)
    unique_identifier = models.CharField(max_length = 300, unique=True)
    # Foreign Keys 
    warehouse = models.ForeignKey(WareHouse , on_delete = models.SET_NULL , null = True , blank = True)
    category = models.ForeignKey(Category , on_delete = models.SET_NULL , null = True , blank = True)
    company = models.ForeignKey(Brand , on_delete = models.SET_NULL , null = True , blank = True)
    product_model = models.ForeignKey(ProductModel , on_delete = models.SET_NULL , null = True , blank = True)

    def __str__(self):
        if self.product_model:
            return f"{self.product_model} {self.unique_identifier}"

        return f"{self.unique_identifier}"
         



