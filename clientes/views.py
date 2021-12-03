from rest_framework import viewsets
from .models import Cliente
from .serializer import ClienteSerializer, CadastroSerializer


class ClientesViewSet(viewsets.ModelViewSet):  # a ClientesViewSet é a herança da ModelViewSet
    queryset = Cliente.objects.all()
    serializer_class = CadastroSerializer

    def get_serializer_class(self):
        if self.request.method in ['GET']:
            return ClienteSerializer
        return self.serializer_class
