# Generated by Django 3.2.9 on 2021-12-03 02:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contas', '0002_auto_20211202_2130'),
    ]

    operations = [
        migrations.RenameField(
            model_name='conta',
            old_name='id_client',
            new_name='client',
        ),
    ]
