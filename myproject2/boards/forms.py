from django import forms
from boards.models import Usuarios, Habitacion, TipoHabitacion, TipoProducto, Producto
from django.contrib.auth.forms import AuthenticationForm


class UsuarioForm(forms.ModelForm):
    class Meta:
        model = Usuarios
        fields = ['documento', 'usuNombres', 'usuApellidos', 'email', 'telefono', 'genero', 'estado', 'usuContraseña', 'id_tipo', 'foto']
        widgets = {
            'documento': forms.TextInput(attrs={'class': 'form-control'}),
            'usuNombres': forms.TextInput(attrs={'class': 'form-control'}),
            'usuApellidos': forms.TextInput(attrs={'class': 'form-control'}),
            'email': forms.TextInput(attrs={'class': 'form-control'}),
            'telefono': forms.TextInput(attrs={'class': 'form-control'}),
            'genero': forms.TextInput(attrs={'class': 'form-control'}),
            'estado': forms.TextInput(attrs={'class': 'form-control'}),
            'usuContraseña': forms.PasswordInput(attrs={'class': 'form-control'}),
            'id_tipo': forms.TextInput(attrs={'class': 'form-control'}),
            'foto': forms.ClearableFileInput(attrs={'class': 'form-control'}),
        }

class HabitacionForm(forms.ModelForm):
    class Meta:
        model=Habitacion
        fields = ['numero', 'estado', 'caracteristicas', 'costo_base', 'capacidad', 'nro_cama_sencilla', 'nro_cama_doble', 'nro_camarotes', 'tipo', 'imagen']
        widgets = {
            'numero': forms.TextInput(attrs={'class': 'form-control'}),
            'estado': forms.TextInput(attrs={'class': 'form-control'}),
            'caracteristicas': forms.Textarea(attrs={'class': 'form-control', 'rows': 3}),
            'costo_base': forms.NumberInput(attrs={'class': 'form-control'}),
            'capacidad': forms.NumberInput(attrs={'class': 'form-control'}),
            'nro_cama_sencilla': forms.NumberInput(attrs={'class': 'form-control'}),
            'nro_cama_doble': forms.NumberInput(attrs={'class': 'form-control'}),
            'nro_camarotes': forms.NumberInput(attrs={'class': 'form-control'}),
            'tipo': forms.Select(attrs={'class': 'form-control'}),
            'imagen': forms.ClearableFileInput(attrs={'class': 'form-control'}),}

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = ['nombre', 'costo', 'stock_disponible', 'descripcion', 'id_tipo']
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'costo': forms.NumberInput(attrs={'class': 'form-control'}),
            'stock_disponible': forms.NumberInput(attrs={'class': 'form-control'}),
            'descripcion': forms.TextInput(attrs={'class': 'form-control'}),
            'id_tipo': forms.Select(attrs={'class': 'form-control'}),
        }

class TipoHabitacionForm(forms.ModelForm):
    class Meta:
        model = TipoHabitacion
        fields = ['id', 'tipo'] 
        widgets = {
            'id': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo': forms.TextInput(attrs={'class': 'form-control'}),}

class TipoProductoForm(forms.ModelForm):
    class Meta:
        model = TipoProducto
        fields = ['categoria']
        widgets = {
            'categoria': forms.TextInput(attrs={'class': 'form-control'}),
        }
        
class CustomAuthenticationForm(forms.Form):
    usuNombres = forms.CharField(label='Usuario')
    usuContraseña = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
