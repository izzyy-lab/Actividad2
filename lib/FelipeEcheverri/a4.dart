import 'dart:io';

void main(){
  stdout.write("Indique la temperatura del horno (°C): ");
  int c = int.parse(stdin.readLineSync()!);

  var f = (c*1.8) + 32;

  print('La temperatura del horno en grados Fahrenheit es: $f');
}