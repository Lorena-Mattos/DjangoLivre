from random import randint
from faker import Faker


def gera_cpf():
    cpf = f'{randint(3, 9)}{randint(0, 9)}{randint(0, 9)}{randint(0, 9)}{randint(0, 9)}{randint(0, 9)}{randint(0, 9)}' \
          f'{randint(0, 9)}{randint(0, 9)}{randint(0, 9)}{randint(0, 9)}'
    return cpf


def e164(number):
    """
    Changes phone numbers to the E.164 format.
    Transforma os contatos telefônicos para o formato E.164.
    :param: '(22) 91919-9191'
    :return: '+5522919199191'
    """
    number = number.replace('-', '').replace('(', '').replace(')', '').replace(' ', '')
    return number


def check_email(email=''):
    """
    Retira todos os acentos e espaços do email, e deixa todas as letras em minusculo.
    """
    a = email.lower().replace(' ', '')
    a = a.replace('á', 'a').replace('ã', 'a').replace('é', 'e').replace('ê', 'e').replace('í', 'i')
    return a


fake = Faker('pt_BR')
Faker.seed(0)
"""
# id, (name, cpf, gender, birth_date, email, phone), nationality
for client in range(50):
    # (name, cpf, email, phone)
    c = ({fake.first_name()}, {fake.last_name()}, gera_cpf(), f'{check_email(nome)}@gmail.com', 
         e164(fake.cellphone_number()))
    print(c)
"""
# id, street, zipcode, city, state,
for address in range(50):
    e = (f'{fake.street_name()}, {fake.building_number() }', fake.bairro(),
         fake.postcode(), fake.city(), fake.estado_sigla())
    print(e)


