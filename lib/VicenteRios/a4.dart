import 'dart:io';

void main() {
  print('Ingrese la temperatura en Celsius:');
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 1.8) + 32;

  print('\n--- CONVERSIÓN DE TEMPERATURA ---');
  print('Temperatura en Celsius: $celsius °C');
  print('Temperatura en Fahrenheit: $fahrenheit °F');
}
