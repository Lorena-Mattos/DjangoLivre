from rest_framework import viewsets
from .models import Cliente
from .serializer import ClienteSerializer, CadastroSerializer
# Templates imports abaixo
from django.shortcuts import render
from .forms import RegisterForm
from contas.models import Conta

class ClientesViewSet(viewsets.ModelViewSet):  # a ClientesViewSet é a herança da ModelViewSet
    queryset = Cliente.objects.all()
    serializer_class = CadastroSerializer

    def get_serializer_class(self):
        if self.request.method in ['GET']:
            return ClienteSerializer
        return self.serializer_class

# Funções de Templates abaixo


def register_client_view(request):
    form = RegisterForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = RegisterForm()
    context = {'form': form}
    return render(request, 'clientes/register_client.html', context)


def client_list_view(request):
    queryset = Cliente.objects.all()  # lista de cliente
    queryset2 = Conta.objects.all()  # lista de contas
    context = {
        'object_list': queryset,
        'contas_list': queryset2
    }
    return render(request, 'gerente/lista.html', context)

