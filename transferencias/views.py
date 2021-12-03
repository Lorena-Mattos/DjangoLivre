# from django.shortcuts import render
from rest_framework import viewsets
from .models import Transferencia
from .serializer import TransferenciaSerializer


class TransferenciaViewSet(viewsets.ModelViewSet):
    queryset = Transferencia.objects.all()
    serializer_class = TransferenciaSerializer


# Create your views here.
