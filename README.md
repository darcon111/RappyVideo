# RappyVideo

Descripción Proyecto

Para realizar el proyecto si unos el patrón de diseño viper, también se hizo unos de librerías como alamofire, alamofire Image entre otras pero estan son las más importante, para guardar la consultas a los servicios de uso la cache y tambien se guarde en caché las imágenes para evitar cargarlas muchas veces. Con esto nuestro aplicativo cuando no posea internet nos va a poder mostrar información.
Para la visualización de los video de uso una librería pod llamada Youtube Player la cual recibe como parámetro el id del video de youtube para proceder luego a reproducirlo, 
En el tema de las pruebas unitarias se realizó test a dos funciones que me carga datos del endpoint no se usó más pruebas porque estos eran los procesos más importantes de la aplicación. 


Las capas de la aplicación (por ejemplo capa de persistencia, vistas, red, negocio, etc) y qué clases pertenecen a cual.

Como se dijo anteriormente se usó el patrón viper
Las clases de la Vista son :
ListMovieController
DetailMovieController
VideoPlayController

Negocio
MovieInteractor
VideoInteractor

La responsabilidad de cada clase creada.
ListMovieController -> muestra la lista de categoría y los películas de cada categoría
DetailMovieController -> muestra el detalle de cada película
VideoPlayController -> reproduce el primer video de la película
MovieInteractor -> Consulta en el endpoint las películas por su categoría 
VideoInteractor -> consulta la url del video de la película a reproducir 
MovieRouter -> crea una instancia de ListMovieController
VideoRouter -> crea una instancia de VideoPlayController
ViewToPresenterMovieProtocol -> contiene todas las acciones a realizar para visualizar la lista de peliculas por categoria 
ViewToPresenterVideoProtocol -> contiene las acciones para reproducir un video.
Config -> contiene configuración del proyecto con la url del endpoint y nombre de los servicios
CetegoryCell -> representa la celda de cada categoría
MovieCell -> representa la celda de cada película 
RappyVideoTests -> contiene las pruebas unitarias realizadas 




Preguntas
¿En qué consiste el principio de responsabilidad única? ¿Cuál es su propósito?

El principio única es un fundamento de los principios sólidos, la cual me dice que una clase y/o módulo solo haga una cosa en especifico, y esta clase va a ser fácil de realizar pruebas unitarias, ya que posee pocos métodos, y a su vez se traduce en pocas lineas de código, si tenemos un clases con muchos métodos y líneas de código nos toca refactorizar y crear nuevas clases.

El propósito es tener clases que realice labores específicas, y tener separadas las capas una de la otra, ejemplo podemos crear una clases que realice presentaciones al usuario y que la misma haga consulta a la base de datos en ese caso estamos rompiendo el principio de responsabilidad única, ya que esta clases hace varias cosas a la vez. 

Qué características tiene, según su opinión, un “buen” código o código limpio

código limpio es la manera como escribes tu código fuente en los diferentes lenguajes de programación, con esto me permite varias cosas una de ellas permite que tu codigo sea entendible para otra persona, también me permite retomar fácilmente un proyecto si lo retomamos.

Para realizar código limpio debo realizar lo siguiente:
1) nombre de la variables/ funciones/ parámetros etc deben de ser descriptivos, que describan qué acción o propiedad representan 
2) modificar código existente, esto no dice que si hay una forma de mejorar cierto código hagámoslo
3)funciones cortas, me indica que las funciones que realice debe ser lo más pequeñas y claras posibles
4) no tengas fragmentos de código que realice la misma labores 
5) los comentarios deben ser pequeños y claros
6) no olvidar capturar los posibles errores en tu código
7) pruebas de código, nunca olvidar realizar las respectivas pruebas de tu código ya sea unitaria o de integración


