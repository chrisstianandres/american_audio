# Generated by Django 3.1.1 on 2020-11-02 22:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0002_auto_20201102_1714'),
    ]

    operations = [
        migrations.AlterField(
            model_name='inventario',
            name='fecha_salida',
            field=models.DateField(blank=True, null=True),
        ),
    ]