from django.conf.urls import url
from django.urls import path
from . import views
from apps.inventario.views import *
from django.contrib.auth.decorators import login_required

app_name = 'Inventario'

urlpatterns = [
    path('lista', login_required(lista.as_view()), name='lista'),
    path('data', login_required(views.data), name='data'),
    path('nuevo', login_required(views.nuevo), name='nuevo'),
    path('crear', login_required(views.crear), name='crear'),
    path('eliminar', login_required(views.eliminar), name='eliminar'),

]
