Future<String> buscarHabitacion(int numero) async {
  print('Buscando habitación...');
  await Future.delayed(const Duration(seconds: 1));

  // Simulación: solo la habitación 205 existe en este ejemplo
  if (numero == 205) {
    return 'Habitación 205';
  } else {
    throw Exception('Habitación no encontrada.');
  }
}

Future<bool> verificarDisponibilidad(String habitacion) async {
  print('Verificando disponibilidad...');
  await Future.delayed(const Duration(seconds: 1));

  // Simulación: la habitación ingresada está disponible
  bool disponible = true; 

  if (disponible) {
    return true;
  } else {
    throw Exception('Habitación no disponible.');
  }
}

Future<String> confirmarReserva(String habitacion) async {
  print('Confirmando reserva...');
  await Future.delayed(const Duration(seconds: 1));

  // Simulación: confirmación exitosa
  bool confirmacionExitosa = true;

  if (confirmacionExitosa) {
    return 'Reserva confirmada correctamente';
  } else {
    throw Exception('No se pudo confirmar la reserva.');
  }
}

void main() async {
  print('===== SISTEMA DE RESERVAS =====');

  try {
    // 1. Buscar habitación
    String habitacion = await buscarHabitacion(205);
    print('Habitación encontrada: $habitacion');

    // 2. Verificar disponibilidad
    bool estaDisponible = await verificarDisponibilidad(habitacion);
    if (estaDisponible) {
      print('Habitación disponible');
    }

    // 3. Confirmar reserva
    String confirmacion = await confirmarReserva(habitacion);
    print(confirmacion);

  } catch (error) {
    print('Error: ${error.toString().replaceAll('Exception: ', '')}');
  } finally {
    print('===== RESERVA FINALIZADA =====');
  }
}