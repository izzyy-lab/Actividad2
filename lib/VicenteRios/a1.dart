import 'dart:io';

void main() {
  print('Ingrese el tiempo en segundos:');
  double tiempo = double.parse(stdin.readLineSync()!);

  print('Ingrese la velocidad en m/s:');
  double velocidad = double.parse(stdin.readLineSync()!);

  double distancia = velocidad * tiempo;

  print('La distancia recorrida es: $distancia metros');
}
