from django import forms
from .models import Cliente


class RegisterForm(forms.ModelForm):
    cpf = forms.CharField(label='CPF:',
                          widget=forms.TextInput(attrs={'placeholder': 'Digite só os números'}))

    class Meta:
        model = Cliente
        fields = {
            'given_name',
            'last_name',
            'cpf',
            'birth_date',
            'email',
            'phone'
        }
