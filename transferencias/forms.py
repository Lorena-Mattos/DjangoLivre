from django import forms
from .models import Transferencia


class TransactionForm(forms.ModelForm):
    class Meta:
        model = Transferencia
        fields = {
            'transaction_type',
            'amount',
            'date_time',
            'sender',
            'recipient'
        }
