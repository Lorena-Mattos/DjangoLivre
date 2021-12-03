# Generated by Django 3.2.9 on 2021-12-01 02:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientes', '0002_auto_20211130_0214'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cliente',
            name='name',
        ),
        migrations.AddField(
            model_name='cliente',
            name='first_name',
            field=models.CharField(default=1, max_length=25, verbose_name='Primeiro Nome'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='cliente',
            name='last_name',
            field=models.CharField(default=1, max_length=30, verbose_name='Sobrenome'),
            preserve_default=False,
        ),
    ]
