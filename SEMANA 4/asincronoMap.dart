Future<Map<String,dynamic>> buscarProducto() async{
//   tiempo de respuesta
  await Future.delayed(Duration(seconds:3));
  return{
    "id" : 1,
    "nombre" : "papa blanca",
    "stock" : 100,
    "precio" : 1.5,
    "activo" : false
  };
}

void main() async{
  print("buscando producto");
  Map<String,dynamic> producto = await buscarProducto();
  print("Estudiante encontrado: $producto");
}