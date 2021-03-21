from django.shortcuts import render
from django.contrib.auth.decorators import login_required

from .models import Category,Brand

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
    
def landingpage(request):
    context={}
    return render(request, 'landingpage.html', context)
