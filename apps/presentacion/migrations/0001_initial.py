# Generated by Django 3.1.1 on 2020-11-05 20:20

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Presentacion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('abreviatura', models.CharField(max_length=10)),
                ('descripcion', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name': 'presentacion',
                'verbose_name_plural': 'presentaciones',
                'db_table': 'presentacion',
                'ordering': ['id', 'nombre'],
            },
        ),
    ]
