from django.contrib import admin


from . import models

class CustomerAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id', 'name')
    search_fields = ('id', 'name')
    list_per_page = 20

class OrderAdmin(admin.ModelAdmin):
    list_display = ('id', 'order_date', 'completed')
    list_display_links = ('id', 'order_date', 'completed')
    search_fields = ('id', 'order_date', 'completed')
    list_per_page = 20

class OrderItemAdmin(admin.ModelAdmin):
    list_display = ('id', 'product', 'order')
    list_display_links = ('id', 'product', 'order')
    search_fields = ('id', 'product', 'order')
    list_per_page = 20
    
admin.site.register(models.Profile , ProfileAdmin)
# Register your models here.
