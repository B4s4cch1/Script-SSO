@echo off
title Ayuda con comandos
color 5
:menu
cls
echo 1. Listar archivos en carpeta actual
echo 2. Cambiar de directorio
echo 3. Abrir archivo o directorio
echo 4. Crear archivo
echo 5. Crear directorio
echo 6. Eliminar un archivo
echo 7. Eliminar un directorio
echo 8. Renombrar archivo
echo 9. Renombrar directorio
echo 10. Copiar archivo o directorio
echo 11. Mover archivo o directorio
echo 12. Ver jerarquia de directorios y archivos
echo 13. Informacion del sistema
echo 14. Ayuda con un comando
echo 15. Salir

set /p opcion="Ingrese el numero de la opcion que quiere realizar: "

if "%opcion%" == "1" goto listar
if "%opcion%" == "2" goto cambiarDirectorio
if "%opcion%" == "3" goto abrir
if "%opcion%" == "4" goto crearArchivo
if "%opcion%" == "5" goto crearDirectorio
if "%opcion%" == "6" goto eliminarArchivo
if "%opcion%" == "7" goto eliminarDirectorio
if "%opcion%" == "8" goto renombrarArchivo
if "%opcion%" == "9" goto renombrarDirectorio
if "%opcion%" == "10" goto copiar
if "%opcion%" == "11" goto mover
if "%opcion%" == "12" goto arbol
if "%opcion%" == "13" goto informacion
if "%opcion%" == "14" goto ayuda
if "%opcion%" == "15" goto salir


:listar
dir
pause
goto menu

:cambiarDirectorio
set /p nombre="Ingrese el nombre del directorio al que quiere ir: "
CHDIR %nombre%
pause
goto menu

:abrir 
set /p archivo="Ingrese el nombre del archivo que quiere abrir: "
start %archivo%
pause
goto menu

:crearArchivo
set /p archivo="Ingrese el nombre de archivo: "
type nul > %archivo%
pause
goto menu

:crearDirectorio
set /p directorio="Ingrese el nombre del directorio: "
MD %directorio%
pause
goto menu

:eliminarArchivo
set /p archivo="Ingrese el nombre del archivo: "
set /p formato="Ingrese el formato del archivo: "
del %archivo%.%formato%
pause
goto menu

:eliminarDirectorio
set /p directorio="Ingrese el nombre del directorio: "
RD %directorio%
pause 
goto menu

:renombrarArchivo
set /p viejoNombre="Ingrese el nombre del archivo: "
set /p formato="Ingrese el formato del archivo: "
set /p nuevoNombre="Ingrese el nuevo nombre del archivo:"
REN %viejoNombre%.%formato% %nuevoNombre%.%formato%
pause
goto menu

:renombrarDirectorio
set /p viejoNombre="Ingrese el nombre del directorio que desea renombrar: "
set /p nuevoNombre="Ingrese el nuevo nombre para el directorio: "
REN %viejoNombre% %nuevoNombre%
pause
goto menu

:copiar
set /p nombre="Ingrese el nombre del archivo a copiar: "
set /p ubicacion="Ingrese la ubicacion donde quiere copiar el archivo: "
XCOPY %nombre% %ubicacion%
pause 
goto menu

:mover
set /p nombre="Ingrese el nombre del archivo a mover: "
set /p ubicacion="Ingrese la ubicacion donde quiere mover el archivo: "
MOVE %nombre% %ubicacion%
pause
goto menu

:arbol
tree 
pause
goto menu

:informacion
systeminfo
pause 
goto menu

:ayuda
set /p nombre="Ingrese el nombre del comando con el que quiere ayuda: "
help %nombre%
goto menu

:salir
echo Programa cerrado
Exit


