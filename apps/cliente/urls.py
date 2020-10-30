from django.conf.urls import url
from django.urls import path
from . import views
from apps.cliente.views import *
from django.contrib.auth.decorators import login_required
app_name = 'Clientes'

urlpatterns = [
    path('lista', login_required(views.cliente_lista), name='lista'),
    path('data', login_required(views.data), name='data'),
    path('nuevo', login_required(views.nuevo), name='nuevo'),
    path('crear', login_required(views.crear), name='crear'),
    path('crearcli', login_required(views.crearcli), name='crearcli'),
    path('editar/<int:id>', login_required(views.editar), name='editar'),
    path('eliminar', login_required(views.eliminar), name='eliminar'),

]
