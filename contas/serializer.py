from .models import Conta
from rest_framework import serializers


class ContaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Conta
        fields = ['agency', 'account_number', 'account_type', 'balance', 'client']
