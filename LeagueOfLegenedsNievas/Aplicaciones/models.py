from ast import Delete
from distutils.command.upload import upload
from django.db import models

class Equipo(models.Model):
    id=models.AutoField(primary_key=True)
    nombre=models.CharField(max_length=20, verbose_name='Nombre')
    region=models.CharField(max_length=5, verbose_name='Region')
    partidas_ganadas=models.PositiveSmallIntegerField(verbose_name='Partidas ganadas')
    partidas_perdidas=models.PositiveSmallIntegerField(verbose_name='Partidas perdidas')
    imagen=models.ImageField(upload_to='imagenes/', null=True, verbose_name='Imagen')
    
    def __str__(self):
        fila1="Nombre: " + self.nombre + " - " + "Region: " + self.region
        return fila1
    
    def delete(self, using=None, keep_parents=False):
        self.imagen.storage.delete(self.imagen.name)
        super().delete()

class Integrantes(models.Model):
    id=models.AutoField(primary_key=True)
    nombre=models.CharField(max_length=15, verbose_name='Nombre')
    posicion=models.CharField(max_length=10, verbose_name='Posicion')
    pais=models.CharField(max_length=20, verbose_name='Pais')
    equipo=models.CharField(max_length=20, verbose_name='Equipo')
    imagen=models.ImageField(upload_to='imagenes/', null=True, verbose_name='Imagen')
    
    def __str__(self):
        fila="Nombre: " + self.nombre + " - " + "Posicion: " + self.posicion + " - " + "Pais: " + self.pais + " - " + "Equipo: " + self.equipo
        return fila
    
    def delete(self, using=None, keep_parents=False):
        self.imagen.storage.delete(self.imagen.name)
        super().delete()

    
class Usuarios(models.Model):
    invocador=models.CharField(max_length=15)
    password=models.CharField(max_length=15)
    
    def __str__(self):
        fila="Nombre: " + self.invocador

