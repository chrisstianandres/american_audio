# Generated by Django 3.1.1 on 2020-11-02 22:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='inventario',
            name='serie',
            field=models.CharField(default=0, max_length=13, unique=True),
        ),
    ]
