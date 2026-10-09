Future<Map<String, dynamic>> buscarVehiculo(int id) async {
  print('Consultando vehículo...');
  await Future.delayed(const Duration(seconds: 2));
  
  return {
    'ID': id,
    'Marca': 'Toyota',
    'Modelo': 'Corolla Cross',
    'Precio': 95000.00,
    'Disponible': true,
    'anio': 2024, // Campo del reto agregado
  };
}

void main() async {
  Map<String, dynamic> vehiculo = await buscarVehiculo(10);
  
  print('Vehículo encontrado');
  print('Marca: ${vehiculo['Marca']}');
  print('Modelo: ${vehiculo['Modelo']}');
  print('Precio: S/ ${vehiculo['Precio']}');
  print('Disponible: ${vehiculo['Disponible']}');
  print('Año: ${vehiculo['anio']}'); // Visualización en pantalla
}