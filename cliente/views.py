from django.shortcuts import render, redirect, get_object_or_404
from .forms import ClienteForm
from .models import Cliente


def registrar(request):
    formulario = ClienteForm(request.POST or None)
    if formulario.is_valid():
        formulario.save()
        return redirect('frontpage')
    return render(request, 'cliente/registrar.html')


def editar(request, id):
    cliente = get_object_or_404(Cliente, pk=id)
    formulario = ClienteForm(request.POST or None, instance=cliente)
    if formulario.is_valid():
        formulario.save()
        return redirect('frontpage')
    return render(request, 'cliente/editar.html', {
        'cliente': cliente
    })


def eliminar(request, id):
    cliente = get_object_or_404(Cliente, pk=id)
    cliente.delete()
    return redirect('frontpage')
