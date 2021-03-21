from django.contrib import admin


from . import models

class BrandAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id','name')
    search_fields = ('id','name')
    list_per_page = 20

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id','name')
    search_fields = ('id','name')
    list_per_page = 20

class ProductModelAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'company', )
    list_display_links = ('id', 'name', 'company')
    search_fields = ('id', 'name', 'company')
    list_per_page = 20

class WareHouseAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'region',)
    list_display_links = ('id', 'name', 'region',)
    search_fields = ('id', 'name', 'region',)
    list_per_page = 20

class ProductAdmin(admin.ModelAdmin):
    list_display = ('id', 'unique_identifier','product_model', 'company', 'category', 'warehouse')
    list_display_links = ('id', 'unique_identifier', 'product_model',)
    search_fields = ('id', 'unique_identifier','product_model', 'company', 'category', 'warehouse')
    list_per_page = 20

admin.site.register(models.Brand , BrandAdmin)
admin.site.register(models.Category, CategoryAdmin)
admin.site.register(models.ProductModel, ProductModelAdmin)
admin.site.register(models.WareHouse, WareHouseAdmin)
admin.site.register(models.Product, ProductAdmin)
