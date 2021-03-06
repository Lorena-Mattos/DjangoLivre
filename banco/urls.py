from django.contrib import admin
from django.urls import path, include
from rest_framework import routers
from clientes.views import ClientesViewSet, register_client_view, client_list_view
from enderecos.views import EnderecoViewSet, address_form_view
from contas.views import ContaViewSet
from transferencias.views import TransferenciaViewSet, transaction_view

router = routers.DefaultRouter()
router.register(r'cadastro', ClientesViewSet)
router.register(r'enderecos', EnderecoViewSet)
router.register(r'contas', ContaViewSet)
router.register(r'transferencias', TransferenciaViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('admin/', admin.site.urls),
    path('register/', register_client_view, name='register'),
    path('gerente/', client_list_view, name='gerente'),
    path('transacao/', transaction_view),
    path('address/', address_form_view)
]


"""banco URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
