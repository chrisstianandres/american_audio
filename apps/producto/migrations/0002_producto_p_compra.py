# Generated by Django 3.1.1 on 2020-11-05 20:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('producto', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='p_compra',
            field=models.DecimalField(blank=True, decimal_places=2, default=0.0, max_digits=9, null=True),
        ),
    ]