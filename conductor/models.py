from django.db import models
from empleado.models import Empleado


class Conductor(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODCONDUCTOR')
    codempleado = models.ForeignKey(Empleado, on_delete=models.CASCADE, db_column='CODEMPLEADO')
    tipodelicencia = models.CharField(max_length=5, db_column='TIPODELICENCIA')
    caducidadlicencia = models.DateField(db_column='CADUCIDADLICENCIA')

    class Meta():
        db_table = 'CONDUCTOR'

    def __str__(self):
        return f"{self.codempleado.nombre} {self.codempleado.apellido} {self.tipodelicencia}"
