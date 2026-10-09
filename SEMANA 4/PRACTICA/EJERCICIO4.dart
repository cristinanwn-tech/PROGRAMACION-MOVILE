Future<String> buscarLibro(int id) async {
  print('Buscando libro...');
  await Future.delayed(const Duration(seconds: 1));

  // Base de datos local simulada
  final libros = {
    1: 'Programación en Dart',
    2: 'Fundamentos de Base de Datos',
    3: 'Desarrollo Web',
  };

  if (libros.containsKey(id)) {
    return libros[id]!;
  } else {
    throw Exception('Libro no encontrado');
  }
}

void main() async {
  try {
    // Probar pasando un ID inexistente (ej. 5)
    String libro = await buscarLibro(5);
    print('Libro encontrado: $libro');
  } catch (error) {
    // Captura y limpia el mensaje de la excepción lanzada
    print('Error: ${error.toString().replaceAll('Exception: ', '')}');
  }

  print('El programa continúa funcionando');
}