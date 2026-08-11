void main(){
  int anterior = 1;
  int actual = 1;
  int nuevo = anterior + actual;
  print(anterior);
  print(actual);
  while (nuevo<100){
    print(nuevo);
    anterior = actual;
    actual = nuevo;
    nuevo = anterior + actual;
        }
}