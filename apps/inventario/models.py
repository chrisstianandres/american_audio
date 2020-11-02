from datetime import datetime

from django.db import models
from django.forms import model_to_dict

from apps.compra.models import Compra
from apps.producto.models import Producto


class Inventario(models.Model):
    commpra = models.ForeignKey(Compra, on_delete=models.PROTECT)
    producto = models.ForeignKey(Producto, on_delete=models.PROTECT, null=True, blank=True)
    fecha_ingreso = models.DateField(default=datetime.now)
    fecha_salida = models.DateField(default=datetime.now)
    serie = models.IntegerField(default=0)

    def __str__(self):
        return '%s' % self.producto.nombre

    def toJSON(self):
        item = model_to_dict(self)
        item['compra'] = self.commpra.toJSON()
        item['producto'] = self.producto.toJSON()
        return item

    class Meta:
        db_table = 'inventario'
        verbose_name = 'inventario'
        verbose_name_plural = 'inventarios'
        ordering = ['-id']