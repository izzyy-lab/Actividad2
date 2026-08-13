void main() {
  int primero = 1;
  int segundo = 1;

  while (primero <= 100) {
    int resto = primero % 2;

    print('Número: $primero - Resto: $resto');

    int siguiente = primero + segundo;
    primero = segundo;
    segundo = siguiente;
  }
}
