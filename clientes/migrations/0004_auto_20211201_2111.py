# Generated by Django 3.2.9 on 2021-12-02 00:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientes', '0003_auto_20211130_2306'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cliente',
            name='first_name',
        ),
        migrations.AddField(
            model_name='cliente',
            name='given_name',
            field=models.CharField(default=1, max_length=30, verbose_name='Nome'),
            preserve_default=False,
        ),
    ]
