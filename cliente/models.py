from django.db import models


class Cliente(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODCLIENTE')
    nombre = models.CharField(max_length=40, db_column='NOMBRECLIENTE')
    apellido = models.CharField(max_length=20, db_column='APELLIDOCLIENTE')
    email = models.EmailField(max_length=40, db_column='EMAIL')
    direccion = models.CharField(max_length=20, db_column='DIRECCIONCLIENTE')

    class Meta():
        db_table = 'CLIENTE'

    def __str__(self):
        return f"{ self.cliente.nombre } { self.cliente.apellido }"
