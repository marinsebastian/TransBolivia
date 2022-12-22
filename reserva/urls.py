from django.urls import path
from . import views

app_name = 'reserva'
urlpatterns = [
    path('registrar/', views.registrar, name='registrar'),
    path('editar/<int:pk>/', views.editar, name='editar'),
    path('eliminar/<int:id>/', views.eliminar, name='eliminar'),
]
