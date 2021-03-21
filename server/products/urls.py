from django.urls import path
from . import views

app_name='products'
urlpatterns = [
    path('', views.index , name = 'index'),
    path('view-categories/', views.view_categories , name = 'view_categories'),
    path('view-brands/', views.view_brands , name = 'view_brands'),
    path('view-agents/', views.view_agents , name = 'view_agents'),
    path('view-products/', views.view_products , name = 'view_products'),
    path('view-products/<int:pk>/', views.product , name = 'view_products'),
    path('products/add/', views.add_product , name = 'add_product'),
    path('products/fetch/', views.fetch_product , name = 'fetch_product'),

]