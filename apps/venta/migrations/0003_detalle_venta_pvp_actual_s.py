# Generated by Django 3.1.1 on 2020-11-06 18:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('venta', '0002_detalle_venta_pvp_actual'),
    ]

    operations = [
        migrations.AddField(
            model_name='detalle_venta',
            name='pvp_actual_s',
            field=models.DecimalField(blank=True, decimal_places=2, default=0.0, max_digits=9, null=True),
        ),
    ]
