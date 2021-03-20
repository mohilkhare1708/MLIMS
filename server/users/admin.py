from django.contrib import admin

# Register your models here.


from . import models

class ProfileAdmin(admin.ModelAdmin):
    list_display = ('id', 'user','is_admin')
    list_display_links = ('id','user','is_admin')
    search_fields = ('id',)
    list_per_page = 20

admin.site.register(models.Profile , ProfileAdmin)

