from .models import Cliente
from rest_framework import serializers
from contas.models import Conta


class SaldoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Conta
        fields = ['balance']


class ClienteSerializer(serializers.ModelSerializer):
    # account = SaldoSerializer()

    class Meta:
        model = Cliente
        exclude = ['id']
        # pode ser fields = '__all__' se for salvar tudo


class CadastroSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cliente
        exclude = ['id']
