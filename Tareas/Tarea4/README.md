# Actividad Stark-Trek  

## Hecho por Juan Manuel Morales Martín  

***  

### Entidades y relaciones  

| Entidades | Relaciones |
|--|--|
|Actores|Interpreta|
|Personajes (Supertipo)|Participa|
|Capítulos|Aparece|
|Películas|Se_visita|
|Planetas|Viaja|
|Nave|Tiene|
|Lanzadera||  

***   

### Atributos  
Actores: Nombre, personaje, F.Nac, Nacionalidad.  

Personajes: Nombre, Graduación Militar que desempeña (Capitán, Teniente, Almirante, etc) y su raza (Humano, Vulcano, Klingon):  
* Humano: FechaNac, Ciudad terráquea,  
* Vulcano: Nombre mento, Fecha graduación  
* Klingon: Planeta natal, Fecha último combate  

Capítulos: Temporada, Título, ordenRodaje, Fecha de primera emisión, Personajes    

Películas: Películas proyectadas en cine (Con Año lanzamiento, Título, Director) (Compuesta), Personajes, Protagonista.  

Planetas: CodPlaneta, Nombre, Galaxia, ProblemaResuelto.  

Nave: Nombre, Código, Número de tripulantes.   

Lanzadera: NumEntero, Capacidad  

***   

### Explicación de las relaciones propuestas  

Un actor interpreta únicamente a un personaje, y un personaje solo puede ser interpretado por un único actor. (1:1).  

De uno a muchos personajes pueden aparecer en una película, y en varias películas pueden aparecer varios personajes. (N:M).   

Un personaje puede participar en varios capítulos, y en un capítulo pueden participar n personajes. (N:M).   

En un capítulo se visitan varios planetas, y varios planetas se visitan en varios capítulos. (N:M).   

De un a a varias naves viajan al planeta, y varios planetas son visitados por varias naves. (N:M).  

Una nave puede tener o no lanzadera, y una lanzadera está en una nave. (1:1).  

***  

### Resultado final   

<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/Tarea4/Tarea3-EJ10.drawio.png"/>


