from django.db import models
from empresa.models import Empresa


class Empleado(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODEMPLEADO')
    codempresa = models.ForeignKey(Empresa, on_delete=models.CASCADE, db_column='CODEMPRESA')
    nombre = models.CharField(max_length=40, db_column='NOMBRE')
    apellido = models.CharField(max_length=20, db_column='APELLIDO')
    edad = models.IntegerField(db_column='EDAD')
    direccionactual = models.CharField(max_length=20, db_column='DIRECCIONACTUAL')
    emailempleado = models.EmailField(db_column='EMAILEMPLEADO')

    class Meta():
        db_table = 'EMPLEADO'
