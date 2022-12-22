from django.db import models


class Empresa(models.Model):
    id = models.AutoField(primary_key=True, db_column='CODEMPRESA')
    nombreempresa = models.CharField(max_length=20, db_column='NOMBREEMPRESA')
    tipoempresa = models.CharField(max_length=20, db_column='TIPOEMPRESA')

    class Meta():
        db_table = 'EMPRESA'
