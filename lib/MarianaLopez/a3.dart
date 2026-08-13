import 'dart:io';
import 'dart:math';


void main () {

  stdout.write('ingrese el valor del lado a: ');

  String? entradaA = stdin.readLineSync();

  double a = double.parse(entradaA!);

  stdout.write('Ingrese el valor del lado b: ');

  String? entradaB = stdin.readLineSync();

  double b = double.parse(entradaB!);

  double aCuadrado = pow(a, 2).toDouble();

  double bCudadrado = pow(b, 2).toDouble();

  double suma = aCuadrado + bCudadrado;

  double hipotenusa = sqrt(suma);

  print('La hipotenusa es: $hipotenusa');


}