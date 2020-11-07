# Generated by Django 3.1.1 on 2020-11-07 14:16

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('tipogasto', '0001_initial'),
        ('empresa', '0002_auto_20201105_1620'),
    ]

    operations = [
        migrations.CreateModel(
            name='Gasto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField(default=datetime.datetime.now)),
                ('valor', models.DecimalField(decimal_places=2, default=0.0, max_digits=9)),
                ('detalle', models.CharField(max_length=50)),
                ('empresa', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='empresa.empresa')),
                ('tipo_gasto', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='tipogasto.tipo_gasto')),
            ],
            options={
                'verbose_name': 'gasto',
                'verbose_name_plural': 'gastos',
                'db_table': 'gasto',
                'ordering': ['-id', '-tipo_gasto', '-valor'],
            },
        ),
    ]