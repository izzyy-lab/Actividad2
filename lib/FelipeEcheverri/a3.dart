import 'dart:io';
import 'dart:math';

void main(){
  stdout.write("Indique el primer lado del triangulo: ");
  int side1 = int.parse(stdin.readLineSync()!);
  stdout.write("Indique el segundo lado del triangulo: ");
  int side2 = int.parse(stdin.readLineSync()!);

  var h1 = (pow(side1,2) + pow(side2,2));
  var h2 = sqrt(h1);

  print('La hipotenusa de $side1 y $side2 es: $h2');
}