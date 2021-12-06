from django.db import models


class Cliente(models.Model):
    class Meta:
        db_table = "client"
    given_name = models.CharField('Nome', max_length=50)
    last_name = models.CharField('Sobrenome', max_length=50)
    cpf = models.CharField('CPF', max_length=14)
    email = models.EmailField('E-mail', max_length=50)
    phone = models.CharField('Telefone', max_length=50)
    birth_date = models.DateField('Data de Nascimento')

    objects = models.Manager()

    def __str__(self):
        return self.given_name + ' ' + self.last_name
