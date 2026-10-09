
Future<String> prepararPedido() {
  return Future.delayed(Duration(seconds: 3), () => "Hamburguesa lista");
 }

void main() {  
   print("Pedido recibido");
   prepararPedido().then((resultado) {
    print(resultado);
    });

   print("El sistema continúa trabajando");
 }