## Debugging

La idea es hacer debugging de los siguientes metodos definidos. Deben encontrarse los errores en el codigo basado en los stacktraces, el nombre del metodo que refleja su intencion y el tipo de error.

La idea es que el estudiante debe:

0. Correr los tests, usar los tests para entender las entradas de los datos necesarios para los metodos.
1. Hay tests con la palabra clave `xit`, esta palabra es usada para que no se corran. Para que se corran, cambiar el `xit` por `it`
1. Utilice las tecnicas vistas para hacer debugging
1. Use herramientas como `puts` o `byebug` o `pry`


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