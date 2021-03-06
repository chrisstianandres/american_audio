# Generated by Django 3.1.1 on 2020-12-09 13:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('servicio', '0002_remove_servicio_pvp'),
        ('venta', '0003_detalle_venta_pvp_actual_s'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='detalle_venta',
            name='cantidads',
        ),
        migrations.RemoveField(
            model_name='detalle_venta',
            name='pvp_actual_s',
        ),
        migrations.RemoveField(
            model_name='detalle_venta',
            name='servicio',
        ),
        migrations.RemoveField(
            model_name='detalle_venta',
            name='subtotals',
        ),
        migrations.CreateModel(
            name='Detalle_venta_servicios',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pvp_actual_s', models.DecimalField(blank=True, decimal_places=2, default=0.0, max_digits=9, null=True)),
                ('cantidads', models.IntegerField(default=0)),
                ('subtotals', models.DecimalField(decimal_places=2, default=0.0, max_digits=9)),
                ('servicio', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.PROTECT, to='servicio.servicio')),
                ('venta', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='venta.venta')),
            ],
            options={
                'verbose_name': 'detalle_venta_servicio',
                'verbose_name_plural': 'detalles_venta_servicios',
                'db_table': 'detalle_venta_servicio',
            },
        ),
    ]
