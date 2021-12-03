from django.db import models
from contas.models import Conta


class Transferencia(models.Model):
    class Meta:
        db_table = "transactions"
    TRANSFER_CHOICES = (
        ('PIX', 'PIX'),
        ('TED', 'TED'),
        ('DOC', 'DOC')
    )
    transaction_type = models.CharField('Tipo de Transferência', max_length=3, choices=TRANSFER_CHOICES)
    amount = models.IntegerField('Saldo')
    date_time = models.DateTimeField('Data e Horário')
    sender = models.ForeignKey(Conta, related_name='+', on_delete=models.DO_NOTHING)
    recipient = models.ForeignKey(Conta, related_name='+', on_delete=models.DO_NOTHING)
    # a ForeignKey recebe o objeto como um tod o. Talvez seja importante deixar a função
    # def__str__ nas ForeignKeys.
