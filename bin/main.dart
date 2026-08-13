import 'dart:io';

// El Aprendiz 2 definirá los atributos de esta clase
class Contact{
  String name;
  String phone;
  Contact(this.name, this.phone);
}

void main() {
  List<Contact> schedule = [];
  bool running = true;

  while (running) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write('Ingrese el nombre del contacto: ');
        String? nombre = stdin.readLineSync();

        stdout.write('Ingrese el teléfono del contacto: ');
        String? telefono = stdin.readLineSync();

        if (nombre == null || nombre.trim().isEmpty || telefono == null || telefono.trim().isEmpty) {
          print('Nombre o teléfono inválido. No se agregó el contacto.');
        } else {
          // Evitar duplicados por nombre (case-insensitive)
          bool existe = schedule.any((c) => c.name.toLowerCase() == nombre!.toLowerCase());
          if (existe) {
            print('Ya existe un contacto con ese nombre.');
          } else {
            schedule.add(Contact(nombre.trim(), telefono.trim()));
            print('Contacto agregado correctamente.');
          }
        }
        break;
            case '2':
        if (schedule.isEmpty) {
        print('No hay contactos registrados.');
      } else {
        print('\n--- Lista de Contactos ---');

        for (var contacto in schedule) {
          print('Nombre: ${contacto.name}');
          print('Teléfono: ${contacto.phone}');
          print('-------------------------');
        }
      }
      
        break;
      case '3':
        stdout.write('Ingrese el nombre del contacto a buscar: ');
        String? nombreBuscar = stdin.readLineSync();

        bool founded = false;

        for (var contacto in schedule) {
          if (contacto.name.toLowerCase() ==
              nombreBuscar!.toLowerCase()) {
            print('\nContacto encontrado:');
            print('Nombre: ${contacto.name}');
            print('Teléfono: ${contacto.phone}');
            founded = true;
            break;
          }
        }

        if (!founded) {
          print('No se encontró un contacto con ese nombre.');
        }
        break;

      case '4':
        stdout.write('Ingrese el nombre del contacto a eliminar: ');
        String? nombreEliminar = stdin.readLineSync();

        bool eliminado = false;

        for (int i = 0; i < schedule.length; i++) {
          if (schedule[i].name.toLowerCase() ==
              nombreEliminar!.toLowerCase()) {
            schedule.removeAt(i);
            print('Contacto eliminado correctamente.');
            eliminado = true;
            break;
          }
        }

        if (!eliminado) {
          print('No se encontró un contacto con ese nombre.');
        }
        break;
      case '5':
        print('Saliendo de la agenda...');
        running = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}