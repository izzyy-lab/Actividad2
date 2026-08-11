@echo off
::Crear carpetas

mkdir bin
mkdir lib

::Crear archivos vacíos
type nul > bin\main.dart
type nul > lib\contact.dart
type nul > .gitignore
type nul > README.md

echo Esctructura Creada con exito.
pause