# Trabajo Final coderHouse

#Integrantes :
- Paulo Nievas
- Ángeles Figueroa Rodríguez


Proyecto pensado para poder hacer inscripcion de equipos para torneo de League of Legends

- Home: con imgen principal del MSI 2022 y un boton para acceder a ver las partidas de las ligas.
- Equipos : listado de los equipos inscriptos.
- Inscripciones: contiene el formuladio para la isncripcion del equipo con sus campos respetivos.
- Campeones: un listado de todos los campeones actuales de League of Legends con una breve descripcion y con un enlace a la pagina principal para ampliar informacion.
- Partidas: redireccion a la pagina donde estan todas las partidas actuales y sus cronogramas.

*Falta poder agregar las imagenes de cada campeon (para trabajo final) y corregir error de la busqueda de equipo.

/************************************************************************************************/

En la seccion de inscripciones se agregan los datos a SQLite y a la base de datos de PhpMyAdmin, con todos los datos y las imagenes que se carguen. Dicha base de datos es torneo_league_of_legends.sql 
Para que se conecten se requiere configuracion en archivo LeagueOfLegenedsNievas/settings.py

/************************************************************************************************/

/************************************************************************************************/

Se agrego la carpeta con las imagenes de los campeones, para agregarlas al listado en el trabajo final.
Por ahora solo se pueden visualisar los datos de cada campeon desde una api mostrados con javascript. Tambien el archivo api.py permite tomar esa URL para toamr solo algunos datos y crear un archivo json propio, en caso de ser necesario para utilizarlo.

/************************************************************************************************/
