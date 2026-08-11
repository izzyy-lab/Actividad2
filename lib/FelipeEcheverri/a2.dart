import 'dart:io';
void main() {
  stdout.write("Indique el nombre del empleado: ");
  String? name = stdin.readLineSync();
  stdout.write("Indique la cantidad de horas laboradas al mes: ");
  int hours = int.parse(stdin.readLineSync()!);
    stdout.write("Indique la tarifa por hora: ");
  int fee = int.parse(stdin.readLineSync()!);

  int total = (hours*fee);

  print('Hola $name su total de horas trabajdas es $hours con una tarifa de $fee por hora su total es: $total ');
}