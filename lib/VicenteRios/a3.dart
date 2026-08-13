import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese el primer cateto:');
  double cateto1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el segundo cateto:');
  double cateto2 = double.parse(stdin.readLineSync()!);

  double hipotenusa = sqrt(pow(cateto1, 2) + pow(cateto2, 2));

  print('\n--- TEOREMA DE PITÁGORAS ---');
  print('Primer cateto: $cateto1');
  print('Segundo cateto: $cateto2');
  print('Hipotenusa: ${hipotenusa.toStringAsFixed(2)}');
}
