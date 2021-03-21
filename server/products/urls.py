from django.urls import path
from . import views

app_name='products'
urlpatterns = [
    path('', views.index , name = 'index'),
    path('view-categories/', views.view_categories , name = 'view_categories'),
    path('view-brands/', views.view_brands , name = 'view_brands'),
]