from django.db import models


class Ruta(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODRUTA')
    distancia = models.IntegerField(db_column='DISTANCIA')
    fechainicio = models.DateField(db_column='FECHAINICIO')
    origen = models.CharField(max_length=20, db_column='ORIGEN')
    destino = models.CharField(max_length=20, db_column='DESTINO')
    fechavuelta = models.DateField(db_column='FECHAVUELTA')

    class Meta():
        db_table = 'RUTA'

    def __str__(self):
        return f"{self.ruta.origen}-{self.ruta.destino}"
