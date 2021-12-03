from django.contrib import admin
from .models import Cliente


class ClienteAdmin(admin.ModelAdmin):
    list_display = ('id', 'given_name', 'last_name')
    list_display_links = ('id', 'given_name', 'last_name')
    search_fields = ('given_name', 'last_name',)  # tem que ser uma lista ou uma tupla, por isso precisa da , no final

admin.site.register(Cliente, ClienteAdmin)  # ClienteAdmin é relacionado a Cliente (um modelo)

# Register your models here.
