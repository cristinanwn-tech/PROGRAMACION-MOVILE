Future<String> buscarPersona() async {
  await Future.delayed(Duration(seconds: 2));
  return "Carmen Larico";
}

void main() async {
  print("Buscando Persona");
  String persona = await buscarPersona();
  print("Persona encontrada: $persona");
  print("Consulta finalizada");
}