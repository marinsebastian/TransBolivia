from django.urls import path
from . import views

app_name = 'cliente'
urlpatterns = [
    path('registrar/', views.registrar, name='registrar'),
    path('editar/<int:id>/', views.editar, name='editar'),
    path('eliminar/<int:id>/', views.eliminar, name='eliminar'),
]
