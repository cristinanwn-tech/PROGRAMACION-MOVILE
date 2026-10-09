Future<String> obtenerDocente() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Luis Ramírez';
}

Future<String> obtenerAula() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Laboratorio 302';
}

void main() async {
  print('Consultando información del sistema académico...');

  final resultados = await Future.wait([
    obtenerDocente(),
    obtenerAula(),
  ]);

  String docente = resultados[0];
  String aula = resultados[1];

  print('Docente: $docente');
  print('Aula: $aula');
}