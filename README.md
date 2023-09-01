## Metodos

La idea es crear los metodos requeridos basados en los hints que se proveen en los comentarios de codigo, usando los conceptos aprendidos en esta leccion.

La idea es que el estudiante debe:

0. Crear sus propios metodos.
1. Invocar pruebas unitarias que prueben esos metodos. La forma de hacerlo es corriendo los siguientes comandos en la terminal:

```rb
bundle install
rspec 
```

Al momento inicial, todas las pruebas unitarias (rspec) estan NO pasando (en rojo). Es esperado que al inicio todas fallen con:


```shell
undefined local variable or method ...
```

Es parte de la asignacion que el estudiante de manera autodidacta sea capaz de leer los mensajes, buscar que significan, y que pidan ayuda si no son capaces de avanzar.

2. Consultar la documentacion oficial de metodos ya existentes en Ruby para poder completar la tarea asignada. Ver https://rubyapi.org/
3. Es esperado


## Tests

Se recomienda este recurso para iniciar a leer acerca de los tests:

[The Odin Project - Rspec](https://www.theodinproject.com/lessons/ruby-introduction-to-rspec)

## Docker

Si se usa Docker, se puede correr los siguientes comandos para ejecutar los tests:

```
docker build -t my-rspec-image .
docker run --rm my-rspec-image
```

Para ingresar al contenedor:

```
docker run -it my-rspec-image bash
```
