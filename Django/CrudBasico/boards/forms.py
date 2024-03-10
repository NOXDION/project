from django import forms
from boards.models import Usuarios

class UsuarioForm(forms.ModelForm):
    class Meta:
        model=Usuarios
        fields=['usuNombres', 'usuApellidos']
        widgets={'usuNombres':forms.TextInput(attrs={'class':'form-control'}),
                 'usuApellidos':forms.TextInput(attrs={'class':'form-control'}),}