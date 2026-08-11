
void main () {

  int a = 1;
  int b = 1;

  print(a);
  print(b);

  while (a + b <= 100) {

    int siguiente = a + b;

    print (siguiente);

    a = b;
    b = siguiente;
  }
}