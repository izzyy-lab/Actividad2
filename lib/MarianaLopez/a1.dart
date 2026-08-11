import 'dart:io';

void main () {

stdout.write('Ingrese la velocidad (m/s): ');

String? entradaVelocidad = stdin.readLineSync();

double velocidad = double.parse(entradaVelocidad!);

stdout.write('Ingrese el tiempo (segundos): ');

String? entradaTiempo = stdin.readLineSync();

double tiempo = double.parse(entradaTiempo!);

double distancia = velocidad * tiempo;

print ('La distancia recorrida es: $distancia metros');

}