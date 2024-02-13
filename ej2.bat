@echo off

:menu
echo Elija una operacion:
echo Pulsa 1 para Sumar
echo Pulsa 2 para Restar
echo Pulsa 3 para Multiplicar
echo Pulsa 4 para Dividir
echo Pulsa 0 para Salir

set /p opcion=Opcion: 

if "%opcion%"=="0" goto :fin
if "%opcion%"=="1" goto :suma
if "%opcion%"=="2" goto :resta
if "%opcion%"=="3" goto :multiplicacion
if "%opcion%"=="4" goto :division

echo Opcion invalida
goto :menu

:suma
set /p num1=Introduce el primer numero: 
set /p num2=Introduce el segundo numero: 
set /a resultado=num1+num2
echo El resultado de la suma es: %resultado%
goto :menu

:resta
set /p num1=Introduce el primer numero: 
set /p num2=Introduce el segundo numero: 
set /a resultado=num1-num2
echo El resultado de la resta es: %resultado%
goto :menu

:multiplicacion
set /p num1=Introduce el primer numero: 
set /p num2=Introduce el segundo numero: 
set /a resultado=num1*num2
echo El resultado del producto es: %resultado%
goto :menu

:division
set /p num1=Introduce el primer numero: 
set /p num2=Introduce el segundo numero: 
set /a resultado=num1/num2
echo El resultado de la division es: %resultado%
goto :menu

:fin
