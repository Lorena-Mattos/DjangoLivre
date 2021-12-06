from rest_framework import viewsets
from enderecos.models import Endereco
from enderecos.serializer import EnderecoSerializer
# Templates imports abaixo
from django.shortcuts import render
from .forms import AddressForm


class EnderecoViewSet(viewsets.ModelViewSet):
    queryset = Endereco.objects.all()
    serializer_class = EnderecoSerializer


# Funções de Templates abaixo


def address_form_view(request):
    form = AddressForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = AddressForm()
    context = {'form': form}
    return render(request, 'endereco/address_form.html', context)