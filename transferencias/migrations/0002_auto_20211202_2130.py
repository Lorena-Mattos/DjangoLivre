# Generated by Django 3.2.9 on 2021-12-03 00:30

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('transferencias', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='transferencia',
            old_name='recipient_id',
            new_name='id_recipient',
        ),
        migrations.RenameField(
            model_name='transferencia',
            old_name='sender_id',
            new_name='id_sender',
        ),
        migrations.AlterModelTable(
            name='transferencia',
            table='transactions',
        ),
    ]