from django.shortcuts import redirect, render
from django.http import HttpResponse
from .models import Equipo
from .forms import EquipoForm

def inicio(request):
    return render(request, 'paginas/home.html')

def index(request):
    equipos=Equipo.objects.all()
    print(equipos)
    return render(request, './equipos/index.html', {'equipos': equipos})

def inscripcion(request):
    formulario=EquipoForm(request.POST or None, request.FILES or None)
    if formulario.is_valid():
        formulario.save()
        return redirect('equipos')
    return render(request, './equipos/inscripcion.html', {'formulario': formulario})

def editar(request, id):
    edicion=Equipo.objects.get(id=id)
    formulario=EquipoForm(request.POST or None, request.FILES or None, instance=edicion)
    if formulario.is_valid() and request.POST:
        formulario.save()
        return redirect('equipos')
    return render(request, './equipos/inscripcion.html', {'formulario': formulario})

def campeones(request):
    return render(request, 'paginas/campeones.html')

def eliminar(request, id):
    eliminando=Equipo.objects.get(id=id)
    eliminando.delete()
    return redirect('equipos')

def search(request):
   
    if request.GET["equipo"]:
          nombre = request.GET['equipo']
          equipos=Equipo.objects.filter(nombre__icontains=nombre)
          return render(request, './equipos/index.html', {'equipos': equipos})
          #return HttpResponse(equipos)
    else:
        respuesta="no hay datos"
        return HttpResponse(respuesta) 
    
def news(request):
    return render(request, 'paginas/news.html')