# Generated by Django 3.2.4 on 2022-06-17 10:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0005_shipment'),
    ]

    operations = [
        migrations.RenameField(
            model_name='shipment',
            old_name='shiment_no',
            new_name='shipment_no',
        ),
    ]