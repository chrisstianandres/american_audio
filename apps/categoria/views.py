import json

from django.http import HttpResponseRedirect, JsonResponse, HttpResponse
from django.shortcuts import render, redirect
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from django.views.generic import *

from apps.Mixins import SuperUserRequiredMixin, ValidatePermissionRequiredMixin
from apps.backEnd import nombre_empresa
from apps.categoria.forms import CategoriaForm
from apps.categoria.models import Categoria

opc_icono = 'fas fa-boxes'
opc_entidad = 'Categoria'
crud = '/categoria/crear'
empresa = nombre_empresa()


class lista(ValidatePermissionRequiredMixin, ListView):
    model = Categoria
    template_name = 'front-end/categoria/categoria_list.html'
    permission_required = 'view_categoria'

    @csrf_exempt
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        data = {}
        try:
            action = request.POST['action']
            if action == 'list':
                data = []
                for c in Categoria.objects.all():
                    data.append(c.toJSON())
            elif action == 'delete':
                try:
                    pk = request.POST['id']
                    cat = Categoria.objects.get(pk=pk)
                    cat.delete()
                except Exception:
                    data['error'] = 'No se puede eliminar este cliente porque esta referenciado en otros procesos'
                    data['content'] = 'Intenta con otra categoria'
            else:
                data['error'] = 'No ha seleccionado una opcion'
        except Exception as e:
            data['error'] = str(e)
        return JsonResponse(data, safe=False)

    def get_context_data(self, **kwargs):
        data = super().get_context_data(**kwargs)
        data['icono'] = opc_icono
        data['entidad'] = opc_entidad
        data['boton'] = 'Nueva Categoria'
        data['titulo'] = 'Listado de Categorias'
        data['nuevo'] = '/categoria/nuevo'
        data['empresa'] = empresa
        data['form'] = CategoriaForm
        return data


class CrudView(ValidatePermissionRequiredMixin, TemplateView):
    form_class = CategoriaForm
    template_name = 'front-end/categoria/categoria_form.html'
    permission_required = 'categoria.add_categoria'

    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        data = {}
        action = request.POST['action']
        pk = request.POST['id']
        try:
            if action == 'add':
                f = CategoriaForm(request.POST)
                data = self.save_data(f)
            else:
                data['error'] = 'No ha seleccionado ninguna opción'
        except Exception as e:
            data['error'] = str(e)
        return HttpResponse(json.dumps(data), content_type='application/json')

    def save_data(self, f):
        data = {}
        if f.is_valid():
            var = f.save()
            data['categoria'] = var.toJSON()
            data['resp'] = True
        else:
            data['error'] = f.errors
        return data
    def get_context_data(self, **kwargs):
        data = super().get_context_data(**kwargs)
        data['icono'] = opc_icono
        data['entidad'] = opc_entidad
        data['boton'] = 'Nueva Categoria'
        data['titulo'] = 'Listado de Categorias'
        data['crud'] = '/categoria/nuevo'
        data['empresa'] = empresa
        data['form'] = self.form_class
        return data


class Update(ValidatePermissionRequiredMixin, TemplateView):
    form_class = CategoriaForm
    model_class = Categoria
    template_name = 'front-end/categoria/categoria_form.html'
    permission_required = 'categoria.change_categoria'

    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        data = {}
        action = request.POST['action']
        pk = self.kwargs['pk']
        try:
            if action == 'edit':
                cat = Categoria.objects.get(pk=int(pk))
                f = CategoriaForm(request.POST, instance=cat)
                if f.is_valid():
                    var = f.save()
                    data['categoria'] = var.toJSON()
                    data['resp'] = True
                    return HttpResponseRedirect('/categoria/lista')
                else:
                    data['error'] = f.errors
            else:
                data['error'] = 'No ha seleccionado ninguna opción'
        except Exception as e:
            data['error'] = str(e)
        return HttpResponse(json.dumps(data), content_type='application/json')

    def get_context_data(self, **kwargs):
        data = super().get_context_data(**kwargs)
        cat = Categoria.objects.get(pk=int(self.kwargs['pk']))
        data['icono'] = opc_icono
        data['entidad'] = opc_entidad
        data['boton'] = 'Nueva Categoria'
        data['titulo'] = 'Listado de Categorias'
        data['nuevo'] = '/categoria/nuevo'
        data['empresa'] = empresa
        data['action'] = 'edit'
        data['crud'] = '/categoria/editar/' + str(self.kwargs['pk'])
        data['form'] = self.form_class(instance=cat)
        return data
