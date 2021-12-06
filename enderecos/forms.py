from django import forms
from .models import Endereco


class AddressForm(forms.ModelForm):
    class Meta:
        model = Endereco
        fields = {
            'street',
            'building_number',
            'address_complement',
            'district',
            'city',
            'state',
            'zip_code'
        }
