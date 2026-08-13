import 'dart:io';

void main () {

   stdout.write('ingrese el nombre del empleado: ');

  String? nombre = stdin.readLineSync();

  stdout.write('ingrese la catidad de horas laboradas: ');

  String? entradaHoras = stdin.readLineSync();

  double horas = double.parse(entradaHoras!);

  stdout.write('ingrese la tarifa por hora: ');

  String? entradaTarifa = stdin.readLineSync();

  double tarifa =double.parse(entradaTarifa!);

  double total = horas * tarifa;

  print('nombre del empleado: $nombre');
  print('Cantidad de horas laboradas: $horas');
  print('Total: $total');


}
