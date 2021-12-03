from django.db import models


class Endereco(models.Model):
    class Meta:
        db_table = "address"
    ESTADOS_CHOICES = (
        ('AC', 'Acre'),
        ('AL', 'Alagoas'),
        ('AP', 'Amapá'),
        ('AM', 'Amazonas'),
        ('BA', 'Bahia'),
        ('CE', 'Ceará'),
        ('DF', 'Distrito Federal'),
        ('ES', 'Espírito Santo'),
        ('GO', 'Goiás'),
        ('MA', 'Maranhão'),
        ('MT', 'Mato Grosso'),
        ('MS', 'Mato Grosso do Sul'),
        ('MG', 'Minas Gerais'),
        ('PA', 'Pará'),
        ('PB', 'Paraíba'),
        ('PR', 'Paraná'),
        ('PE', 'Pernambuco'),
        ('PI', 'Piauí'),
        ('RJ', 'Rio de Janeiro'),
        ('RN', 'Rio Grande do Norte'),
        ('RS', 'Rio Grande do Sul'),
        ('RO', 'Rondônia'),
        ('RR', 'Roraima'),
        ('SC', 'Santa Catarina'),
        ('SP', 'São Paulo'),
        ('SE', 'Sergipe'),
        ('TO', 'Tocantins')
    )
    street = models.CharField('Rua', max_length=50)
    building_number = models.CharField('Número', max_length=5)
    address_complement = models.CharField('Complemento', max_length=100)
    district = models.CharField('Bairro', max_length=50)
    city = models.CharField('Cidade', max_length=30)
    state = models.CharField('Estado', max_length=20, choices=ESTADOS_CHOICES)
    zip_code = models.CharField('CEP', max_length=8)

    def __str__(self) -> str:
        return str(self.id)
