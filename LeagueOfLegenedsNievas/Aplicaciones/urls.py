from xml.dom.minidom import Document
from django.urls import path
from . import views

#para importar img
from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('equipos', views.index, name='equipos'),
    path('inscripcion', views.inscripcion, name='inscripcion'),
    path('editar', views.editar, name='editar'),
    path('campeones', views.campeones, name='campeones'),
    path('eliminar/<int:id>', views.eliminar, name='eliminar'),
    path('editar/<int:id>', views.editar, name='editar'),
    path('search', views.search, name='search'),
    path('news', views.news, name='news'),
    
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

