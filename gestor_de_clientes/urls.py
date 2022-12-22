from django.urls import path, include
from django.contrib import admin
from core.views import frontpage


urlpatterns = [
    path('admin/', admin.site.urls),
    path('cliente/', include('cliente.urls')),
    path('reserva/', include('reserva.urls', namespace='reserva')),
    path('', frontpage, name='frontpage')
]
