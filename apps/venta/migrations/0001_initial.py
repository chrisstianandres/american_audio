# Generated by Django 3.1.1 on 2020-10-06 22:32

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('producto', '0001_initial'),
        ('cliente', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Venta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_venta', models.DateField(default=datetime.datetime.now)),
                ('subtotal', models.DecimalField(decimal_places=2, default=0.0, max_digits=9)),
                ('iva', models.DecimalField(decimal_places=2, default=0.0, max_digits=9)),
                ('total', models.DecimalField(decimal_places=2, default=0.0, max_digits=9)),
                ('estado', models.IntegerField(choices=[(0, 'DEVUELTA'), (1, 'FINALIZADA')], default=1)),
                ('cliente', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='cliente.cliente')),
                ('empleado', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'venta',
                'verbose_name_plural': 'ventas',
                'db_table': 'venta',
            },
        ),
        migrations.CreateModel(
            name='Detalle_venta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(default=1)),
                ('subtotal', models.DecimalField(decimal_places=2, default=0.0, max_digits=9)),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='producto.producto')),
                ('venta', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='venta.venta')),
            ],
            options={
                'verbose_name': 'detalle_venta',
                'verbose_name_plural': 'detalles_ventas',
                'db_table': 'detalle_venta',
            },
        ),
    ]
