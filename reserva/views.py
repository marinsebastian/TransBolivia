from django.shortcuts import render, redirect, get_object_or_404
from .forms import ReservaForm
from conductor.models import Conductor
from cliente.models import Cliente
from camion.models import Camion
from ruta.models import Ruta
from .models import Reserva


def registrar(request):
    formulario = ReservaForm(request.POST or None)
    if formulario.is_valid():
        formulario.save()
        return redirect('frontpage')

    conductores = Conductor.objects.all()
    clientes = Cliente.objects.all()
    camiones = Camion.objects.all()
    rutas = Ruta.objects.all()
    return render(request, 'reserva/registrar.html', {
        'conductores': conductores,
        'clientes': clientes,
        'camiones': camiones,
        'rutas': rutas,
        'form': formulario
    })


def editar(request, pk):
    # print(request.POST)
    reserva = get_object_or_404(Reserva, pk=pk)
    formulario = ReservaForm(request.POST or None, instance=reserva)
    conductores = Conductor.objects.all()
    clientes = Cliente.objects.all()
    camiones = Camion.objects.all()
    rutas = Ruta.objects.all()
    if formulario.is_valid():
        formulario.save()
        return redirect('frontpage')

    return render(request, 'reserva/editar.html', {
        'conductores': conductores,
        'clientes': clientes,
        'camiones': camiones,
        'rutas': rutas,
        'reserva': reserva,
        'form': formulario
    })


def eliminar(request, id):
    reserva = Reserva.objects.get(id=id)
    reserva.delete()
    return redirect('frontpage')
