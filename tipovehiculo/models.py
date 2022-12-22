from django.db import models


class TipoVehiculo(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODTIPO')
    descripciontipo = models.CharField(max_length=100, db_column='DESCRIPCIONTIPO')

    class Meta:
        db_table = 'TIPO_VEHICULO'
