# EJERCICIO 2

1. Prerequisitos:
   - Maquina local con el sistema operativo Windows 10
    - IDE IntelliJ version 2023.3
    - Maven version 3.9.6
    - JDK versión 17
    - Karate versión 1.0

2. Comandos de instalación

    - mvn install - https://maven.apache.org/download.cgi
    - JDK install - https://download.oracle.com/java/17/archive/jdk-17.0.10_windows-x64_bin.exe

3. Instrucciones para ejecutar los test
   - Abrir IntelliJ IDEA.
   - Para abrir el proyecto click en File/Open. 
   - Ubicar el proyecto en la ruta guardada y presionar botón OK para abrir. 
   - Una vez hayan cargado todas las dependencias, ingresar a la carpeta src/test/resource y abrir el petstore.feature. 
   - Diríjase en la fila 8 Feature, haga click derecho y seleccionar Run ‘Scenario’ . 
   - El proyecto procederá a ejecutarse.
   - Para obtener el reporte del proyecto ejecutado, desglosa la carpeta target/karate-reports ingresa al src.test.resources.post.html. 
   - Al lado superior derecho selecciona el navegador Chrome para abrir el reporte.

Referencia: https://github.com/casalazarrodriguez/Ejercicio2.git

## NOTA
- En esta ocación solo se logró jalar y guardar en Json para el primer escenario añadir mascota, para los siguientes escenarios se tuvo inconveniente.
- En una primera ocación se envio el proyecto sin los el Runner y Json; para ejecutar ese proyecto las instrucciones son las siguientes:

  . Instrucciones para ejecutar los test
  - Descargar el proyecto en el enlace compartido con formato ZIP:
  - Abrir IntelliJ IDEA.
  - Para abrir el proyecto click en File/Open.
  - Ubicar el proyecto en la ruta guardada y presionar botón OK para abrir.
  - Una vez hayan cargado todas las dependencias, ingresar a la carpeta src/test/java/com/swag/pe/utilities y abrir el Runner.java .
  - Diríjase en la fija 13 Public class Runner, haga click derecho y seleccionar Run ‘Runner’ .
  - El proyecto procederá a ejecutarse.
  - Para obtener el reporte dashboard del proyecto ejecutado, seleccionar pestaña Mave y hacer clic en Execute Maven Goal.
  - Dijitar mvn serenity:aggregate, esperar a que termine de cargar y seleccionar la ruta mostrada en consola.

Referencia: https://github.com/casalazarrodriguez/Ejercicio2.git