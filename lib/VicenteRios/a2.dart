import 'dart:io';

void main() {
  print('Ingrese el nombre del empleado:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese la cantidad de horas laboradas en el mes:');
  double horas = double.parse(stdin.readLineSync()!);

  print('Ingrese la tarifa por hora:');
  double tarifa = double.parse(stdin.readLineSync()!);

  double total = horas * tarifa;

  print('\n--- INFORMACIÓN DEL EMPLEADO ---');
  print('Nombre: $nombre');
  print('Horas laboradas: $horas');
  print('Tarifa por hora: \$${tarifa.toStringAsFixed(2)}');
  print('Total a pagar: \$${total.toStringAsFixed(2)}');
}
