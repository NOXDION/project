from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin
from django.db import models

class TipoUsuario(models.Model):
    id = models.AutoField(primary_key=True)
    rol = models.CharField(max_length=20, null=True, default=None)

    def __str__(self):
        return self.rol

class TipoHabitacion(models.Model):
    tipo = models.CharField(max_length=20)

    def __str__(self):
        return self.tipo

class TipoProducto(models.Model):
    id = models.AutoField(primary_key=True)
    categoria = models.CharField(max_length=20, null=True)

    def __str__(self):
        return self.categoria

class Usuarios(AbstractBaseUser, PermissionsMixin):
    documento = models.IntegerField(primary_key=True)
    usuNombres = models.CharField(max_length=200, unique=True)
    usuApellidos = models.CharField(max_length=200)
    email = models.EmailField(max_length=100, null=True, blank=True)
    telefono = models.CharField(max_length=15, null=True, blank=True)
    genero = models.CharField(max_length=20, null=True, blank=True)
    estado = models.CharField(max_length=20, null=True, blank=True)
    usuContraseña = models.CharField(max_length=200)
    id_tipo = models.ForeignKey(TipoUsuario, on_delete=models.SET_NULL, null=True, blank=True)
    foto = models.ImageField(upload_to='usuario_imagenes/', null=True, blank=True)
    
    USERNAME_FIELD = 'documento'
    REQUIRED_FIELDS = ['Nombre'] 

    def __str__(self):
        return str(self.documento)

class Habitacion(models.Model):
    numero = models.AutoField(primary_key=True)
    estado = models.CharField(max_length=20)
    caracteristicas = models.CharField(max_length=300, null=True, blank=True)
    costo_base = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    capacidad = models.IntegerField(null=True, blank=True)
    nro_cama_sencilla = models.IntegerField(null=True, blank=True)
    nro_cama_doble = models.IntegerField(null=True, blank=True)
    nro_camarotes = models.IntegerField(null=True, blank=True)
    tipo = models.ForeignKey(TipoHabitacion, on_delete=models.SET_NULL, null=True)
    imagen = models.ImageField(upload_to='habitacion_imagenes/', null=True, blank=True)

    def __str__(self):
        return f'Habitación {self.numero}'
        self.fields['costo_base'].initial = 0.0

class Producto(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=255, null=True)
    costo = models.DecimalField(max_digits=10, decimal_places=2, null=True)
    stock_disponible = models.IntegerField(null=True)
    descripcion = models.CharField(max_length=255, null=True)
    id_tipo = models.ForeignKey(TipoProducto, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.nombre  

class Reserva(models.Model):
    id = models.AutoField(primary_key=True)
    documento = models.ForeignKey('Usuarios', on_delete=models.CASCADE)
    estado = models.CharField(max_length=20, null=True)
    cantidad_adultos = models.IntegerField(null=True)
    cantidad_niños = models.IntegerField(null=True)
    fecha_ingreso = models.DateField(null=True)
    fecha_salida = models.DateField(null=True)
    nro_habitacion = models.ForeignKey(Habitacion, on_delete=models.CASCADE)
    comentarios = models.CharField(max_length=300, null=True)

    def __str__(self):
        return f"Reserva {self.id}"