from django.shortcuts import render,get_object_or_404
from django.core.serializers import serialize
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from .models import Category,Brand,WareHouse,ProductModel,Product
from users.models import Profile
import json 

# Create your views here.
app_name = 'products'

@login_required
def index(request):
    context = {}
    return render(request,'products/index.html', context)

@login_required
def view_categories(request):
    categories = Category.objects.all()
    context = {
        'categories':categories,
    }
    return render(request,'products/view_categories.html', context)

@login_required
def view_brands(request):
    brands = Brand.objects.all()
    context = {
        'brands':brands,
    }
    return render(request,'products/view_brands.html', context)

@login_required
def view_agents(request):
    agents  = Profile.objects.all().filter(is_admin=False) 
    context = {
        'agents':agents,
    }
    return render(request,'products/view_agents.html', context)
    
@csrf_exempt
def add_product(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        print(data)
        warehouse = get_object_or_404(WareHouse,pk=data['warehouse'])
        category = get_object_or_404(Category,pk=data['category'])
        company = get_object_or_404(Brand, pk=data['company'])
        unique_identifier = data['unique_identifier']
        product_model = get_object_or_404(ProductModel,pk=data['product_model'])
        product = Product.objects.create(
            is_listed = True ,
            unique_identifier = unique_identifier,
            warehouse=warehouse,
            category = category,
            company =company,
            product_model = product_model
        )
        return JsonResponse({"added" : "ok"},safe=False)
    else:
        warehouses = list(map(lambda x : {'pk':x.pk, 'name':x.name},WareHouse.objects.all()))
        category = list(map(lambda x : {'pk':x.pk, 'name':x.name},Category.objects.all()))
        company = list(map(lambda x : {'pk':x.pk, 'name':x.name},Brand.objects.all()))
        product_model = list(map(lambda x : {'pk':x.pk, 'name':x.name},ProductModel.objects.all()))
        # data = {
        #     'warehouses' : serialize('json', warehouses),
        #     "category" : serialize('json',category),
        #     "company" : serialize('json',company),
        #     "product_model" : serialize('json',product_model)
        # }
        data = {
            'warehouse' : warehouses,
            'category' : category,
            'company' : company,
            'product_model' : product_model
        }
        return JsonResponse(data, safe=False)

@csrf_exempt
def fetch_product(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        unique_identifier = data['unique_identifier']
        product = get_object_or_404(Product , unique_identifier = unique_identifier)
        data = {
            'name' : product.product_model.name ,
            'description' : product.product_model.description,
            'company' : product.company.name,
            'MRP' : product.product_model.mrp,
            'image' : product.product_model.image.url,
            'warehouse' : product.warehouse.name,
            'latitude' : product.warehouse.latitude,
            'longitude':product.warehouse.longitude,
            'region' : product.warehouse.region,
            'buying_date' : str(product.buying_date),
            'selling_date' : str(product.selling_date),
        }
        return JsonResponse(data, safe=False)

@login_required
def view_products(request):
    products = Product.objects.all()
    context = {
        'products':products,
    }
    return render(request,'products/view_products.html', context)

@login_required
def product(request,pk):
    product = get_object_or_404(Product,pk=pk)
    context = {
        'product' : product,
    }
    return render(request,'products/product.html', context)




def landingpage(request):
    context={}
    return render(request, 'landingpage.html', context)
