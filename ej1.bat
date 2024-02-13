@echo off

:menu
echo Eliga una de las opciones 1-10:
echo 1 Hacer una copia del fichero en la ruta que el usuario indique por consola 
echo 2 Indicar cuántas (sólo el número) líneas del fichero contienen la letra del segundo parámetro.
echo 3 Mostrar los archivos de C:\windows\system32 que empiezan por la letra del segundo parámetro.
echo 4 Mostrar el contenido del fichero en orden inverso.
echo 5 Mostrar la extensión del fichero recibido en el primer parámetro.
echo 6 f Cambiar el fichero del primer parámetro a solo lectura.
echo 7 Borrar el fichero del primer parámetro (incluso si hemos ejecutado previamente el apartado anterior).
echo 8 Informar en caso de que el fichero del primer parámetro no exista.
echo 9 Llame a un script que debes crear (replica.bat), que muestre 100 veces la cadena que le pases por parámetro.
echo 10 Finalizar.

set /p opcion=Opcion:

if "%opcion%"=="0" goto :fin
if "%opcion%"=="1" goto :copia
if "%opcion%"=="2" goto :letra
if "%opcion%"=="3" goto :mostrar
if "%opcion%"=="4" goto :inverso
if "%opcion%"=="5" goto :extension
if "%opcion%"=="6" goto :permisos
if "%opcion%"=="7" goto :eliminar
if "%opcion%"=="8" goto :existe
if "%opcion%"=="9" goto :9
if "%opcion%"=="10" goto :fin

:copia
echo Copiando archivo en %1
xcopy /s /i ej1.bat %1
goto :menu

:letra
find /C "c" C:\Examen\ej1.bat
goto :menu

:mostrar
echo Archivos en C:\windows\system32 que empiezan por la letra %2:
for %%F in (C:\windows\system32\%2*) do (
    echo %%~nxF
)
goto :menu

:inverso
type|SORT /R %1
goto :menu

:extension
set ext=%1
echo.%ext%
set ext=%ext:~-4%
echo.%ext%
goto :menu

:permisos
attrib -R %1
echo Permisos cambiados a solo lectura
goto :menu

:eliminar
del /p %1
goto :menu

:existe
IF EXIST %1 (
 DEL echo El archivo existe
) ELSE (
 Echo El archivo no existe
)
goto :menu

:fin
echo Fin del programa

