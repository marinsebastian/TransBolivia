from django.db import models
from empresa.models import Empresa
from tipovehiculo.models import TipoVehiculo


class Camion(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODCAMION')
    codempresa = models.ForeignKey(Empresa, on_delete=models.CASCADE, db_column='CODEMPRESA')
    codtipo = models.ForeignKey(TipoVehiculo, on_delete=models.CASCADE, db_column='CODTIPO')
    placa = models.CharField(max_length=7, db_column='PLACA')
    modelo = models.CharField(max_length=7, db_column='MODELO')
    marca = models.CharField(max_length=7, db_column='MARCA')
    estado = models.CharField(max_length=15, db_column='ESTADO')

    class Meta():
        db_table = 'CAMION'

    def __str__(self):
        return f"{self.camion.marca} { self.camion.modelo } {self.camion.id}"
