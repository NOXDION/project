# Generated by Django 4.2.6 on 2024-03-13 14:58

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('boards', '0006_rename_usuapellidos_usuarios_apellidos_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='usuarios',
            old_name='Apellidos',
            new_name='Apellido',
        ),
        migrations.RenameField(
            model_name='usuarios',
            old_name='Nombres',
            new_name='Nombre',
        ),
    ]
