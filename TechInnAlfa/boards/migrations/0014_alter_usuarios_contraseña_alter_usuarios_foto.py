# Generated by Django 4.2.6 on 2024-03-31 02:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('boards', '0013_alter_usuarios_foto'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuarios',
            name='Contraseña',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='usuarios',
            name='foto',
            field=models.ImageField(blank=True, default='usuario_imagenes/default.png', null=True, upload_to='usuario_imagenes/'),
        ),
    ]
