Future<String> validarAcceso(String codigo, String password) {
  print('Validando credenciales...');
  return Future.delayed(const Duration(seconds: 2), () {
    if (codigo == 'EST2026' && password == 'dart123') {
      return 'Acceso permitido';
    } else {
      throw Exception('Credenciales incorrectas');
    }
  });
}

void main() {
  validarAcceso("EST2026", "clave")
      .then((resultado) {
        print(resultado);
      })
      .catchError((error) {
        // Se limpia el prefijo 'Exception: ' para mostrar únicamente el mensaje
        print('Error: ${error.toString().replaceAll('Exception: ', '')}');
      });
}