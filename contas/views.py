from rest_framework import viewsets
from .models import Conta
from .serializer import ContaSerializer
# from django.views.generic.list import ListView


class ContaViewSet(viewsets.ModelViewSet):
    queryset = Conta.objects.all()
    serializer_class = ContaSerializer


# class ContaList(ListView):

