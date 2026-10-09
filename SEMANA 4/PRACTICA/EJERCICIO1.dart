Future<String> descargarArchivo() {
  print('Iniciando descarga...');
  return Future.delayed(
    const Duration(seconds: 4),
    () => 'Archivo descargado correctamente',
  );
}

void main() async {
  Future<String> resultado = descargarArchivo();
  
  print('Puede continuar utilizando el sistema');
  
  String mensaje = await resultado;
  print(mensaje);
}