from django.db import models
from clientes.models import Cliente


class Conta(models.Model):
    class Meta:
        db_table = "bank_account"
    CONTAS_CHOICES = (
        ('001', 'Corrente'),
        ('013', 'Poupança')
    )
    agency = models.CharField('Agência', max_length=10)
    account_number = models.CharField('Número da Conta', max_length=7)
    account_type = models.CharField('Tipo da Conta', max_length=8, choices=CONTAS_CHOICES)
    balance = models.FloatField('Saldo')
    client = models.ForeignKey(Cliente, related_name='+', on_delete=models.DO_NOTHING)

    def __str__(self) -> str:
        return str(self.id)
