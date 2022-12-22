from django import forms
from .models import Reserva
from conductor.models import Conductor
from cliente.models import Cliente
from camion.models import Camion
from ruta.models import Ruta


class ReservaForm(forms.ModelForm):
    # confirmacion = forms.BooleanField(widget=forms.CheckboxInput)
    confirmacion = forms.BooleanField(
        widget=forms.CheckboxInput(attrs={'class': 'my-custom-checkbox-class'})
        )

    class Meta:
        model = Reserva
        fields = (
            'codconductor',
            'codcliente',
            'codcamion',
            'codruta',
            'tipodereserva',
            'costodereserva',
            'fechainicioreserva',
            'fechafinreserva',
            'confirmacion',
            'anticiporeserva',
            'porcentajeperdido'
        )
        codconductor = forms.ModelChoiceField(queryset=Conductor.objects.all(), empty_label="Seleccione un conductor")
        codcliente = forms.ModelChoiceField(queryset=Cliente.objects.all(), empty_label="Seleccione un cliente")
        codcamion = forms.ModelChoiceField(queryset=Camion.objects.all(), empty_label="Seleccione un camión")
        codruta = forms.ModelChoiceField(queryset=Ruta.objects.all(), empty_label="Seleccione una ruta")
