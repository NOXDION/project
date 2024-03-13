# Generated by Django 4.2.6 on 2024-03-11 21:34

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='Usuarios',
            fields=[
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('documento', models.IntegerField(primary_key=True, serialize=False)),
                ('usuNombres', models.CharField(max_length=200, unique=True)),
                ('usuApellidos', models.CharField(max_length=200)),
                ('email', models.EmailField(blank=True, max_length=100, null=True)),
                ('telefono', models.CharField(blank=True, max_length=15, null=True)),
                ('genero', models.CharField(blank=True, max_length=20, null=True)),
                ('estado', models.CharField(blank=True, max_length=20, null=True)),
                ('usuContraseña', models.CharField(max_length=200)),
                ('foto', models.ImageField(blank=True, null=True, upload_to='usuario_imagenes/')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.group', verbose_name='groups')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Habitacion',
            fields=[
                ('numero', models.AutoField(primary_key=True, serialize=False)),
                ('estado', models.CharField(max_length=20)),
                ('caracteristicas', models.CharField(blank=True, max_length=300, null=True)),
                ('costo_base', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('capacidad', models.IntegerField(blank=True, null=True)),
                ('nro_cama_sencilla', models.IntegerField(blank=True, null=True)),
                ('nro_cama_doble', models.IntegerField(blank=True, null=True)),
                ('nro_camarotes', models.IntegerField(blank=True, null=True)),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='habitacion_imagenes/')),
            ],
        ),
        migrations.CreateModel(
            name='TipoHabitacion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='TipoProducto',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('categoria', models.CharField(max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='TipoUsuario',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('rol', models.CharField(default=None, max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Reserva',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('estado', models.CharField(max_length=20, null=True)),
                ('cantidad_adultos', models.IntegerField(null=True)),
                ('cantidad_niños', models.IntegerField(null=True)),
                ('fecha_ingreso', models.DateField(null=True)),
                ('fecha_salida', models.DateField(null=True)),
                ('comentarios', models.CharField(max_length=300, null=True)),
                ('documento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('nro_habitacion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='boards.habitacion')),
            ],
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=255, null=True)),
                ('costo', models.DecimalField(decimal_places=2, max_digits=10, null=True)),
                ('stock_disponible', models.IntegerField(null=True)),
                ('descripcion', models.CharField(max_length=255, null=True)),
                ('id_tipo', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='boards.tipoproducto')),
            ],
        ),
        migrations.AddField(
            model_name='habitacion',
            name='tipo',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='boards.tipohabitacion'),
        ),
        migrations.AddField(
            model_name='usuarios',
            name='id_tipo',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='boards.tipousuario'),
        ),
        migrations.AddField(
            model_name='usuarios',
            name='user_permissions',
            field=models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.permission', verbose_name='user permissions'),
        ),
    ]