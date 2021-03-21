from django.db import models

class Brand(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()


class Category(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(default = 'default.jpg',upload_to = 'category')

class ProductModel(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    company = models.ForeignKey(, on_delete=models.CASCADE)
    mrp = models.DecimalField(max_digits=20, decimal_places=2, default=Decimal(0.00))
    image = models.ImageField(default = 'default.jpg',upload_to = 'products')

class WareHouse(models.Model):
    name = models.CharField(max_length = 200)
    description = models.TextField()
    region = models.CharField(max_length=200)
    address1 = models.CharField(max_length = 300)
    address2 = models.CharField(max_length=500)
    latitude =  models.DecimalField(max_digits=20, decimal_places=8, default=Decimal(0.00))
    longitude = models.DecimalField(max_digits=20, decimal_places=8, default=Decimal(0.00))

class Product(models.Model):
    buying_date = models.DateTimeField()
    selling_date = models.DateTimeField()
    is_sold = models.Boolean(default = False)

    # Foreign Keys 
    warehouse = models.ForeignKey(WareHouse , on_delete = models.SET_NULL , null = True , blank = True)
    category = models.ForeignKey(Category , on_delete = models.SET_NULL , null = True , blank = True)
    company = models.ForeignKey(Brand , on_delete = models.SET_NULL , null = True , blank = True)
    product_model = models.ForeignKey(ProductModel , on_delete = models.SET_NULL , null = True , blank = True)


