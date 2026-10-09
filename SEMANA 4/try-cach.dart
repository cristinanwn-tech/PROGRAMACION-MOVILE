Future<String> buscarProducto(int id) async {
  await Future.delayed(Duration(seconds: 2));
  if (id == 1) {
    return "Teclado Premiun";
  }
  if (id == 2) {
    return "Mouse Logitech";
  }
  throw Exception("Producto no encontrado");
}

void main() async {
  try {
    print("Buscando producto...");
    String producto = await buscarProducto(1);
    print("Producto encontrado: $producto");
  } catch (error) {
    print("Ocurrió un error: $error");
  }
  print("Fin del programa");
}