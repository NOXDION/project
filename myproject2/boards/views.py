from django.shortcuts import get_object_or_404, render, redirect
from boards.forms import UsuarioForm, HabitacionForm, TipoHabitacionForm, CustomAuthenticationForm, ProductoForm, TipoProductoForm
from boards.models import Usuarios, Habitacion, TipoHabitacion, Producto, TipoUsuario
from django.contrib.auth import login, logout
from django.contrib.auth.hashers import make_password, check_password
from django.contrib import messages
# Create your views here.
def index(request):
     return render(request,'base2.html')


#Crud Usuarios
def crud_usuario(request):
    usuarios = Usuarios.objects.all()
    return render(request,'Usuarios/show_usuario.html', {'usuarios':usuarios})

def addnew_usuario(request):
    if request.method == 'POST':
        form = UsuarioForm(request.POST)
        if form.is_valid():
            try:
                user = form.save(commit=False)
                user.usuContraseña = make_password(form.cleaned_data['usuContraseña'])
                user.save()
                return redirect('/signin')
            except:
                pass
    else:
        form = UsuarioForm()
    return render(request, 'Usuarios/index.html', {'form': form})

def edit_usuario(request, documento):
    usuario = Usuarios.objects.get(documento=documento)
    tipos_usuarios = TipoUsuario.objects.all()
    form = UsuarioForm(instance=usuario)
    print(request.POST.get('id_tipo'))
    return render(request, 'Usuarios/edit_usuario.html', {'form': form,'usuario':usuario, 'tipos_usuarios': tipos_usuarios})

def update_usuario(request, documento):
    usuario = Usuarios.objects.get(documento=documento)
    tipos_usuarios = TipoUsuario.objects.all()
    form = UsuarioForm(request.POST, instance = usuario)
    if form.is_valid():
        form.save()
        return redirect('/crud_usuario')
    else:
        print(form.errors)
    return render(request, 'Usuarios/edit_usuario.html', {'usuario':usuario})

def destroy_usuario(request, documento):   
    usuario = Usuarios.objects.get(documento=documento)
    usuario.delete()    
    return redirect('crud_usuario')

#Login
def signup(request):
    tipos_usuarios = TipoUsuario.objects.all()
    if request.method == 'POST':
        form = UsuarioForm(request.POST)
        if form.is_valid():
            try:
                user = form.save(commit=False)
                user.usuContraseña = make_password(form.cleaned_data['usuContraseña'])
                user.save()
                login(request, user)
                return redirect('/')
            except Exception as e:
                print(f"Error al registrar usuario: {e}")
                return render(request, 'Usuarios/signup.html', {'form': form, 'error_message': 'Error al registrar usuario'})
    
    else:
        form = UsuarioForm()
    
    return render(request, 'Usuarios/signup.html', {'form': form, 'tipos_usuarios': tipos_usuarios})

def signin(request):
    if request.method == 'GET':
        return render(request, 'Usuarios/signin.html', {'form': CustomAuthenticationForm()})
    else:
        form = CustomAuthenticationForm(request.POST)
        
        if form.is_valid():
            username = form.cleaned_data['usuNombres']
            password = form.cleaned_data['usuContraseña']

            try:
                user = Usuarios.objects.get(usuNombres=username)
                if check_password(password, user.usuContraseña):
                    login(request, user)
                    if user.is_superuser or user.id_tipo == 101:
                        return redirect('/crud_usuario')
                    else:
                        return redirect('/habitaciones')    
                else: 
                    messages.error(request, 'Contraseña incorrecta.')
            except Usuarios.DoesNotExist:
                messages.error(request, 'Usuario no encontrado.')
        
        return render(request, 'Usuarios/signin.html', {'form': form})
            
def signout(request):
    logout(request)
    return redirect('/signin')


# Crud habitaciones
def habitaciones(request):
    habitaciones_disponibles = Habitacion.objects.filter(estado='Disponible')
    tipos_habitacion = TipoHabitacion.objects.all()
    context = {'habitaciones_disponibles': habitaciones_disponibles, 'tipos_habitacion': tipos_habitacion}
    return render(request, 'Habitaciones/habitaciones.html', context)

def addnew_habitacion(request):
    if request.method == 'POST':
        form = HabitacionForm(request.POST, request.FILES)
        if form.is_valid():
            try:
                hab = form.save(commit=False)
                hab.save()
                return redirect('/crud_habitacion')
            except:
                pass
    else:
        form = HabitacionForm()
    return render(request, 'Habitaciones/addnew_habitacion.html', {'form': form})

def detalle_hab(request, numero):
    habitacion = Habitacion.objects.get(numero=numero)
    return render(request, 'Habitaciones/habitacion.html', {'habitacion': habitacion})

def crud_habitacion(request):
    habitacion = Habitacion.objects.all()
    return render(request, 'Habitaciones/show_habitacion.html', {'habitacion': habitacion})

def edit_habitacion(request, numero):
    habitacion = Habitacion.objects.get(numero=numero)
    tipos_habitacion = TipoHabitacion.objects.all()
    return render(request, 'Habitaciones/edit_habitacion.html', {'habitacion':habitacion, 'tipos_habitacion': tipos_habitacion})

def update_habitacion(request, numero):
    habitacion = Habitacion.objects.get(numero=numero)
    form = HabitacionForm(request.POST, request.FILES, instance=habitacion)
    if form.is_valid():
        if 'imagen' in request.FILES:
            habitacion.imagen = request.FILES['imagen']
        form.save()
        return redirect('/crud_habitacion')
    else:
        form = HabitacionForm(instance=habitacion)
    return render(request, 'Habitaciones/edit_habitacion.html', {'habitacion': habitacion, 'form': form})

def destroy_habitacion(request, numero):
    habitacion = Habitacion.objects.get(numero=numero)
    habitacion.delete()
    return redirect('/crud_habitacion')


#Crud Tipo Habitacion
def crud_tipohabitacion(request):
    tipohabitacion = TipoHabitacion.objects.all()
    return render(request, 'T_habitaciones/show_habitacion.html', {'tipohabitacion': tipohabitacion})

def addnew_tipohabitacion(request):
    if request.method == 'POST':
        form = TipoHabitacionForm(request.POST)
        if form.is_valid():
            try:
                tip_hab = form.save(commit=False)
                tip_hab.save()
                return redirect('/crud_tipohabitacion')
            except:
                pass
    else:
        form = TipoHabitacionForm()
    return render(request, 'T_habitaciones/addnew_habitacion.html', {'form': form})

def edit_tipohabitacion(request, id):
    tipohabitacion = TipoHabitacion.objects.get(id=id)
    return render(request, 'T_habitaciones/edit_habitacion.html', {'tipohabitacion': tipohabitacion})

def update_tipohabitacion(request, id):
    habitacion = TipoHabitacion.objects.get(id=id)
    form = TipoHabitacionForm(request.POST, request.FILES, instance=habitacion)
    if form.is_valid():
        if 'imagen' in request.FILES:
            habitacion.imagen = request.FILES['imagen']
        form.save()
        return redirect('/crud_tipohabitacion')
    else:
        form = TipoHabitacionForm(instance=tipohabitacion)
    return render(request, 'T_habitaciones/edit_habitacion.html', {'tipohabitacion': tipohabitacion})

def destroy_tipohabitacion(request, id):
    tipohabitacion = TipoHabitacion.objects.get(id=id)
    tipohabitacion.delete()
    return redirect('/crud_tipohabitacion')


#crud Productos 
def crud_producto(request):
    producto = Producto.objects.all()
    return render(request, 'Productos/show_producto.html', {'producto': producto})

def addnew_producto(request):
    if request.method == 'POST':
        form = ProductoForm(request.POST)
        if form.is_valid():
            try:
                pro = form.save(commit=False)
                pro.save()
                return redirect('/crud_producto')
            except:
                pass
    else:
        form = ProductoForm()
    return render(request, 'Productos/addnew_producto.html', {'form': form})

def edit_producto(request, id):
    producto = Producto.objects.get(id=id)
    form = ProductoForm(instance=producto)
    return render(request, 'Productos/edit_producto.html', {'form': form, 'producto': producto})    

def update_producto(request, id):
    producto = Producto.objects.get(id=id)

    if request.method == 'POST':
        form = ProductoForm(request.POST, instance=producto)
        if form.is_valid():
            form.save()
            return redirect('/crud_producto')
        else:
            print(form.errors)
    else:
        form = ProductoForm(instance=producto)

    return render(request, 'Productos/edit_producto.html', {'form': form, 'producto': producto})

def destroy_producto(request, id):
    producto = Producto.objects.get(id=id)
    producto.delete()
    return redirect('/crud_producto')