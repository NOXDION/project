from django.db import models

# Create your models here.
class Usuarios(models.Model):
    usuNombres = models.CharField(max_length=200)
    usuApellidos = models.CharField(max_length=200)

    class Meta:
        db_table = "tbUsuarios"