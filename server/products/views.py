from django.shortcuts import render

# Create your views here.
app_name = 'products'

def index(request):
    context = {}
    return render(request,'products/index.html', context)
