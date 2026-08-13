import 'dart:io';


void main () {

    stdout.write('Ingrese la temperatura: ');

  String? entradaCelsius = stdin.readLineSync();

  double celsius = double.parse(entradaCelsius!);

  double f = (celsius * 1.8) + 32;

  print('La temperatura en grados es: $f °F ');

}