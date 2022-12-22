from django.shortcuts import render
from cliente.models import Cliente
from reserva.models import Reserva
from conductor.models import Conductor
from ruta.models import Ruta
from django.db.models import Q


def frontpage(request):
    clientes = Cliente.objects.all()
    reservas = Reserva.objects.all()
    rutas = Ruta.objects.all()
    conductores = Conductor.objects.all()

    query = request.GET.get('query', '')

    if query:
        clientes = clientes.filter(
            Q(nombre__icontains=query)
            |
            Q(apellido__icontains=query)
            |
            Q(email__icontains=query)
            |
            Q(direccion__icontains=query)
        )

    return render(request, 'core/frontpage.html', {
        'clientes': clientes,
        'reservas': reservas,
        'rutas': rutas,
        'conductores': conductores,
    })
