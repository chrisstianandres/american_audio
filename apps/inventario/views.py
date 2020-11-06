import json

import goslate
from django.db import transaction
from django.db.models import Q
from django.http import HttpResponseRedirect, HttpResponse
from django.http import JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from django.views.generic import ListView

from apps.backEnd import nombre_empresa
from apps.cliente.forms import ClienteForm
from apps.cliente.models import Cliente
from apps.empleado.models import Empleado
from apps.inventario.models import Inventario
from apps.producto.models import Producto
from apps.proveedor.models import Proveedor

opc_icono = 'fas fa-warehouse'
opc_entidad = 'Inventario'
crud = '/inventario/crear'
empresa = nombre_empresa()


class lista(ListView):
    model = Inventario
    template_name = 'front-end/inventario/inventario_list.html'

    def get_queryset(self):
        return Inventario.objects.none()

    def get_context_data(self, **kwargs):
        data = super().get_context_data(**kwargs)
        data['icono'] = opc_icono
        data['entidad'] = opc_entidad
        data['titulo'] = 'Reporte  de Inventario'
        data['empresa'] = empresa
        return data


@csrf_exempt
def data(request):
    data = []
    start_date = request.POST.get('start_date', '')
    end_date = request.POST.get('end_date', '')
    venta = ''
    estado = ''
    try:
        if start_date == '' and end_date == '':
            compra = Inventario.objects.all()
            for c in compra:
                if c.venta == None:
                    venta = 'No vendido'
                    estado = 'En Stock'
                else:
                    venta = c.venta.fecha_venta
                    estado = 'Vendido'
                data.append([
                    c.id,
                    c.compra.fecha_compra.strftime('%d-%m-%Y'),
                    venta,
                    c.producto.nombre,
                    c.producto.categoria.nombre,
                    c.producto.presentacion.nombre,
                    c.serie,
                    estado
                ])
        else:
            compra = Inventario.objects.filter(Q(compra__fecha_compra__range=[start_date, end_date]) |
                                               Q(venta__fecha_venta__range=[start_date, end_date]))
            for c in compra:
                if c.venta == None:
                    venta = 'No vendido'
                    estado = 'En Stock'
                else:
                    venta = c.venta.fecha_venta
                    estado = 'Vendido'
                data.append([
                    c.id,
                    c.compra.fecha_compra.strftime('%d-%m-%Y'),
                    venta,
                    c.producto.nombre,
                    c.producto.categoria.nombre,
                    c.producto.presentacion.nombre,
                    c.serie,
                    estado,
                    c.id
                ])
    except:
        pass
    return JsonResponse(data, safe=False)


@csrf_exempt
def nuevo(request):
    data = {
        'icono': opc_icono, 'entidad': opc_entidad, 'crud': crud, 'empresa': empresa,
        'boton': 'Guardar Inventario', 'action': 'add', 'titulo': 'Nuevo Registro de un Inventario',
    }
    if request.method == 'POST':
        # inputs = request.POST.getlist('datos')
        datos = json.loads(request.POST['datos'])
        data['list'] = datos

    return render(request, 'front-end/inventario/inventario_form.html', data)


@csrf_exempt
def crear(request):
    data = {}
    if request.method == 'POST':
        datos = json.loads(request.POST['inventario'])
        if datos:
            with transaction.atomic():
                p = []
                for i in datos['prod']:
                    if i['serie'] == 0:
                        data['resp'] = False
                        data['error'] = "Datos Incompletos"
                    else:
                        x = i['producto']
                        x['compra'] = i['id']
                        x['serie'] = i['serie']
                        p.append(x)
                for a in p:
                    dv = Inventario()
                    dv.compra_id = int(a['compra'])
                    dv.producto_id = a['id']
                    dv.serie = str(a['serie'])
                    dv.save()
                    data['resp'] = True
    return HttpResponse(json.dumps(data), content_type="application/json")


@csrf_exempt
def eliminar(request):
    data = {}
    try:
        id = request.POST['id']
        if id:
            ps = Inventario.objects.get(pk=id)
            ps.delete()
            x = Producto.objects.get(pk=ps.producto.id)
            x.stock = x.stock - 1
            x.save()
            data['resp'] = True
        else:
            data['error'] = 'Ha ocurrido un error'
    except Exception as e:
        data['error'] = 'No se puede eliminar este cliente porque esta referenciado en otros procesos'
        data['content'] = 'Intenta con otro cliente'
    return JsonResponse(data)