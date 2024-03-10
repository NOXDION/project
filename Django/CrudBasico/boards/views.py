from django.shortcuts import render, redirect
from boards.forms import UsuarioForm
from boards.models import Usuarios

# Create your views here.
def index(request):
     return render(request,'base2.html')

def crud(request):
    usuarios = Usuarios.objects.all()
    return render(request,'show.html', {'usuarios':usuarios})

def addnew(request):
    if request.method == 'POST':
        form = UsuarioForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/crud')
            except:
                pass
    else:
        form = UsuarioForm()
    return render(request,'index.html',{'form':form})

def edit(request, id):
    usuario = Usuarios.objects.get(id=id)
    return render(request, 'edit.html', {'usuario':usuario})

def update(request, id):
    usuario = Usuarios.objects.get(id=id)
    form = UsuarioForm(request.POST, instance = usuario)
    if form.is_valid():
        form.save()
        return redirect('/crud')
    return render(request, 'edit.html', {'usuario':usuario})

'''def update(request, id):
    usuario = Usuarios.objects.get(id=id)
    form = UsuarioForm(request.POST, instance=usuario)
    print(request.POST)  # Verifica qué datos se están enviando
    print(form.errors)  # Verifica si hay errores en el formulario
    if form.is_valid():
        form.save()
        print('Usuario actualizado con éxito')  # Asegúrate de que llegue a este punto
        return redirect('/crud')
    print('Hubo un problema al actualizar el usuario')  # Si no se actualizó correctamente
    return render(request, 'edit.html', {'usuario': usuario, 'form': form})'''

def destroy(request, id):
    usuario = Usuarios.objects.get(id=id)
    usuario.delete()
    return redirect('/crud')