# Proyecto UGD

Proyecto para postulación a Desarrollador FullStack UGD.
Contiene 2 Aplicaciones Web, en las carpetas

### Introducción
La carpeta Python contiene el servicio de busqueda, desarrollado con web.py
La carpeta Java contiene la aplicación web, desarrollado con Struts2, Google Maps y AngularJS

### Instalación

##### Servicio de Busqueda Python

Instalar las dependencias, editar los archivos de configuracion e iniciar el servidor.

```sh
$ cd Python
$ pip install web.py
$ pip install pymongo
```
La configuracion de la base de datos se encuentra en los archivos configServer.py y configDB.py, de acuerdo al servidor MongoDB a usar.
En el archivo model/configDB.py se debe modificar
```sh
MONGO_ADDRESS = '<mongo_server_address>'
```
por la dirección del servidor mongo a utilizar.

Para iniciar el servicio de busqueda hay que ejecutar los siguientes comandos:
```sh
$ cd /dir/to/Python_Folder
$ python Coordenadas.py
```

#### Java Web App
En la carpeta Java/MapaBip/dist se encuentra el archivo MapaBip.war listo para ser desplegado en un servidor con Java 8.
Se debe editar el archivo server.properties para ingresar la dirección del servicio de busqueda.

## Uso
#### Aplicación Web
En un navegador con capacidad de localizacion, ingresar a la dirección http://<direccionServidorJava>/MapaBip

En la pagina aparecera el mapa que muestra la localización del equipo, y muestra por defecto los Puntos Bip dentro de un radio de 1 Km (Dentro del circulo pintado azul).

Debajo del mapa, hay una barra de desplazamiento que permite modificar el radio de busqueda de los Puntos Bip hasta 5 Km. La opción de radio máximo se puede modificar cambiando la configuración de la barra de desplazamiento.

#### Servicio de Busqueda
La dirección del servicio es http://<direccionServidorMongo>:9000/servicioCoordenadas?long=<long>&lat=<lat>&radio=<radio en Km>
La busqueda entrega un arreglo de objetos con los datos de localización, además de los otros datos de cada una de las estaciones que se encuentren a menos del radio de busqueda.


