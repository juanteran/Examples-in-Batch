@echo off

title Calculadora

:main
cls
echo Esta es la calculadora en Batch
echo Sigue las siguientes instrucciones para usarla
echo.
echo Escribe 1 para sumar
echo Escribe 2 para restar
echo Escribe 3 para multiplicar
echo Escribe 4 para dividir
echo Escribe 0 para salir
set /p instruccion=
if %instruccion%==1 (goto:sumar) else ( 
	if %instruccion%==2 (goto:restar) else (
		if %instruccion%==3 (goto:multiplicar) else (
			if %instruccion%==4 (goto:dividir) else (
				if %instruccion%==0 (goto:exit) else (goto:main)
				)
			)
		)
	)

:sumar
echo.
echo Introduce un primer numero
set /p a=
echo Introduce otro numero
set /p b=
set /a c= %a% + %b%
echo La suma de %a% + %b% es %c%
echo.
echo Introduce 0 para volver a el menu y cualquier otro digito para salir
set /p instruccion=
if %instruccion%==0 (goto:main) else (exit)

:restar
echo.
echo Introduce un primer numero
set /p a=
echo Introduce otro numero
set /p b=
set /a c= %a% - %b%
echo La resta de %a% - %b% es %c%
echo.
echo Introduce 0 para volver a el menu y cualquier otro digito para salir
set /p instruccion=
if %instruccion%==0 (goto:main) else (exit)

:multiplicar
echo.
echo Introduce un primer numero
set /p a=
echo Introduce otro numero
set /p b=
set /a c= %a% * %b%
echo La multiplicacion de %a% * %b% es %c%
echo.
echo Introduce 0 para volver a el menu y cualquier otro digito para salir
set /p instruccion=
if %instruccion%==0 (goto:main) else (exit)

:dividir
echo.
echo Introduce un primer numero
set /p a=
echo Introduce otro numero
set /p b=
set /a c= %a% / %b%
echo La division de %a% / %b% es %c%
echo.
echo Introduce 0 para volver a el menu y cualquier otro digito para salir
set /p instruccion=
if %instruccion%==0 (goto:main) else (exit)
