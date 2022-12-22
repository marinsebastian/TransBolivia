from django.db import models
from conductor.models import Conductor
from cliente.models import Cliente
from camion.models import Camion
from ruta.models import Ruta


class Reserva(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODRESERVAS')
    codconductor = models.ForeignKey(Conductor, on_delete=models.CASCADE, db_column='CODCONDUCTOR')
    codcliente = models.ForeignKey(Cliente, on_delete=models.CASCADE, db_column='CODCLIENTE')
    codcamion = models.ForeignKey(Camion, on_delete=models.CASCADE, db_column='CODCAMION')
    codruta = models.ForeignKey(Ruta, on_delete=models.CASCADE, db_column='CODRUTA')
    tipodereserva = models.CharField(max_length=15, db_column='TIPODERESERVA')
    costodereserva = models.IntegerField(db_column='COSTODERESERVA')
    tiemporeserva = models.DateField(db_column='TIEMPORESERVA')
    fechainicioreserva = models.DateField(db_column='FECHAINICIORESERVA')
    fechafinreserva = models.DateField(db_column='FECHAFINRESERVA')
    confirmacion = models.BooleanField(db_column='CONFIRMACION')
    anticiporeserva = models.IntegerField(db_column='ANTICIPORESERVA')
    porcentajeperdido = models.IntegerField(db_column='PORCENTAJEPERDIDO')

    class Meta:
        db_table = 'RESERVA'
