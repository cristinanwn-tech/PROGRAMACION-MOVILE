Future<String> buscarCurso() async {
  print('Consultando curso...');
  await Future.delayed(const Duration(seconds: 2));
  return 'Desarrollo de Aplicaciones Móviles';
}

void main() async {
  String curso = await buscarCurso();
  print('Curso encontrado: $curso');
  print('Consulta finalizada');
}