from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

from boards import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='inicio'),
#Usuarios
    path('crud_usuario', views.crud_usuario, name='crud_usuario'),
    path('addnew_usuario', views.addnew_usuario, name='addnew_usuario'),
    path('edit_usuario/<int:documento>', views.edit_usuario, name='edit_usuario'),
    path('update_usuario/<int:documento>', views.update_usuario, name='update_usuario'),
    path('delete_usuario/<int:documento>', views.destroy_usuario, name='destroy_usuario'),
#Habitaciones
    path('crud_habitacion', views.crud_habitacion, name='crud_habitacion'),
    path('addnew_habitacion', views.addnew_habitacion, name='addnew_habitacion'),
    path('edit_habitacion/<int:numero>', views.edit_habitacion, name='edit_habitacion'),
    path('update_habitacion/<int:numero>', views.update_habitacion, name='update_habitacion'),
    path('delete_habitacion/<int:numero>', views.destroy_habitacion, name='destroy_habitacion'),
    path('habitaciones/', views.habitaciones, name='habitaciones'),
    path('habitacion/<int:numero>/', views.detalle_hab, name='detalle_hab'),
#Productos
    path('crud_producto', views.crud_producto, name='crud_producto'),
    path('addnew_producto', views.addnew_producto, name='addnew_producto'),
    path('edit_producto/<int:id>', views.edit_producto, name='edit_producto'),
    path('update_producto/<int:id>', views.update_producto, name='update_producto'),
    path('delete_producto/<int:id>', views.destroy_producto, name='destroy_producto'),
#Reservas
    path('crud_producto', views.crud_producto, name='crud_producto'),
    path('addnew_producto', views.addnew_producto, name='addnew_producto'),
    path('edit_producto/<int:id>', views.edit_producto, name='edit_producto'),
    path('update_producto/<int:id>', views.update_producto, name='update_producto'),
    path('delete_producto/<int:id>', views.destroy_producto, name='destroy_producto'),
#tipo habitacion
    path('crud_tipohabitacion', views.crud_tipohabitacion, name='crud_tipohabitacion'),
    path('addnew_tipohabitacion', views.addnew_tipohabitacion, name='addnew_tipohabitacion'),
    path('edit_tipohabitacion/<int:id>', views.edit_tipohabitacion, name='edit_tipohabitacion'),
    path('update_tipohabitacion/<int:id>', views.update_tipohabitacion, name='update_tipohabitacion'),
    path('delete_tipohabitacion/<int:id>', views.destroy_tipohabitacion, name='destroy_tipohabitacion'),
#Login
    path('signup', views.signup, name='signup'),
    path('signin/', views.signin, name='signin'),
    path('signout/', views.signout, name='signout'),

]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)