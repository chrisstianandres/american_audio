from datetime import datetime
from django.db import models
from django.forms import model_to_dict

from apps.cliente.models import Cliente
from apps.empleado.models import Empleado
from apps.producto.models import Producto
from apps.servicio.models import Servicio
from apps.empresa.models import Empresa

estado = (
    (0, 'DEVUELTA'),
    (1, 'FINALIZADA')
)


class Venta(models.Model):
    cliente = models.ForeignKey(Cliente, on_delete=models.PROTECT)
    empleado = models.ForeignKey(Empleado, on_delete=models.PROTECT)
    fecha_venta = models.DateField(default=datetime.now)
    subtotal = models.DecimalField(default=0.00, max_digits=9, decimal_places=2)
    iva = models.DecimalField(default=0.00, max_digits=9, decimal_places=2)
    total = models.DecimalField(default=0.00, max_digits=9, decimal_places=2)
    estado = models.IntegerField(choices=estado, default=1)

    def __str__(self):
        return '%s %s %s' % (self.cliente, self.fecha_venta, self.total)

    def toJSON(self):
        item = model_to_dict(self)
        item['cliente'] = self.cliente.toJSON()
        item['empleado'] = self.empleado.toJSON()
        item['subtotal'] = format(self.subtotal, '.2f')
        item['iva'] = format(self.iva, '.2f')
        item['total'] = format(self.total, '.2f')
        return item

    class Meta:
        db_table = 'venta'
        verbose_name = 'venta'
        verbose_name_plural = 'ventas'
#


class Detalle_venta(models.Model):
    venta = models.ForeignKey(Venta, on_delete=models.PROTECT)
    producto = models.ForeignKey(Producto, on_delete=models.PROTECT, null=True, blank=True, default=None)
    pvp_actual = models.DecimalField(default=0.00, max_digits=9, decimal_places=2, blank=True, null=True)
    subtotalp = models.DecimalField(default=0.00, max_digits=9, decimal_places=2)
    cantidadp = models.IntegerField(default=0)

    def __str__(self):
        return '%s' % (self.venta)

    def toJSON(self):
        empresa = Empresa.objects.get(pk=1)
        item = model_to_dict(self)
        item['venta'] = self.venta.toJSON()
        item['producto'] = self.producto.toJSON()
        return item

    class Meta:
        db_table = 'detalle_venta'
        verbose_name = 'detalle_venta'
        verbose_name_plural = 'detalles_ventas'


class Detalle_venta_servicios(models.Model):
    venta = models.ForeignKey(Venta, on_delete=models.PROTECT)
    servicio = models.ForeignKey(Servicio, on_delete=models.PROTECT, null=True, blank=True, default=None)
    pvp_actual_s = models.DecimalField(default=0.00, max_digits=9, decimal_places=2, blank=True, null=True)
    cantidads = models.IntegerField(default=0)
    subtotals = models.DecimalField(default=0.00, max_digits=9, decimal_places=2)

    def __str__(self):
        return '%s' % (self.venta)

    def toJSON(self):
        empresa = Empresa.objects.get(pk=1)
        item = model_to_dict(self)
        item['venta'] = self.venta.toJSON()
        item['serivicio'] = self.servicio.toJSON()
        return item

    class Meta:
        db_table = 'detalle_venta_servicio'
        verbose_name = 'detalle_venta_servicio'
        verbose_name_plural = 'detalles_venta_servicios'