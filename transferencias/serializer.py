from .models import Transferencia
from rest_framework import serializers


class TransferenciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Transferencia
        fields = ['id', 'transaction_type', 'amount', 'date_time', 'sender', 'recipient']
