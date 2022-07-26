# Trabajo Final coderHouse

#Integrantes:
- Paulo Facundo Gastón Nievas
- Ángeles Figueroa Rodríguez

Proyecto pensado para poder hacer inscripción de equipos para torneo de League of Legends.

- Home: con imagen principal y un botón para acceder a ver las partidas de las ligas.
- Equipos: listado de los equipos inscriptos.
- Inscripciones: contiene el formulario para la inscripción del equipo con sus campos respetivos.
- Campeones: un listado de todos los campeones actuales de League of Legends con una breve descripción y con un enlace a la página principal para ampliar información.
- News: estilo blog, muestra las partidas ya jugadas de la liga, con el enlace para cada una de ellas.
- Login: Solo se podrán logear los coach de cada equipo, y ellos podrán hacer las modificaciones en su equipo, para ello se necesita que un administrador los agregué como usuarios.
- Footer: está el about que lleva a la página con los datos de ambos integrantes.

/************************************************************************************************/
Para poder levantar el proyecto con el servidor es necesario la instalación de XAMPP, para el manejo de imágenes y la base de datos de phpMyAdmin se requiere la instalación de "PyMySQL" y "pillow".

En la sección de inscripciones se agregan los datos a SQLite y a la base de datos de PhpMyAdmin, con todos los datos y las imágenes que se carguen. Dicha base de datos es torneo_league_of_legends.sql que debe ser el mismo nombre de la base de datos para poder hacer la importación.
Para que se conecten se requiere configuración en archivo LeagueOfLegenedsNievas/settings.py 

/************************************************************************************************/
