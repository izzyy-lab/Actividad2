import 'dart:io';

int distancia = 0;

void main() {
bool opcion = true;
  while (opcion){
    stdout.write("Indique la velocidad del automovil (m/s): ");
    int velocidad = int.parse(stdin.readLineSync()!);

    stdout.write("Indique el tiempo del automovil en segundos: ");
    int tiempo = int.parse(stdin.readLineSync()!);

    int distancia = (velocidad*tiempo);

  print('la distancia que recorrió el automovil es: $distancia');
  }

}
