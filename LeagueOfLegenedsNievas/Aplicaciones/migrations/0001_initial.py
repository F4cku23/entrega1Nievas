# Generated by Django 4.0.5 on 2022-06-25 06:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Equipo',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=20, verbose_name='Nombre')),
                ('region', models.CharField(max_length=5, verbose_name='Region')),
                ('partidas_ganadas', models.PositiveSmallIntegerField()),
                ('partidas_perdidas', models.PositiveSmallIntegerField()),
                ('imagen', models.ImageField(null=True, upload_to='imagenes/', verbose_name='Imagen')),
            ],
        ),
        migrations.CreateModel(
            name='Integrantes',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=15, verbose_name='Nombre')),
                ('posicion', models.CharField(max_length=10, verbose_name='Posicion')),
                ('pais', models.CharField(max_length=20, verbose_name='Pais')),
                ('equipo', models.CharField(max_length=20, verbose_name='Equipo')),
                ('imagen', models.ImageField(null=True, upload_to='imagenes/', verbose_name='Imagen')),
            ],
        ),
        migrations.CreateModel(
            name='Partidas',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('equipo1', models.CharField(max_length=20, verbose_name='Nombre')),
                ('equipo2', models.CharField(max_length=20, verbose_name='Nombre')),
            ],
        ),
    ]
