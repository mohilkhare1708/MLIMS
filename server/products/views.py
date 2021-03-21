from django.shortcuts import render
from .models import Category

# Create your views here.
app_name = 'products'

def index(request):
    context = {}
    return render(request,'products/index.html', context)

def view_categories(request):
    categories = Category.objects.all()
    context = {
        'categories':categories,
    }
    return render(request,'products/view_categories.html', context)
