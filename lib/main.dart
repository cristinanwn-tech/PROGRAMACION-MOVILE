import 'package:flutter/material.dart';

// 1. Declaración de tipos de datos y constructor
class Producto {
  final int id;
  final String nombre;
  final double precio;

  Producto({
    required this.id,
    required this.nombre,
    required this.precio,
  });
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Listado de Productos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const ListaProductosScreen(),
    );
  }
}

class ListaProductosScreen extends StatelessWidget {
  const ListaProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. Instanciación de los 10 items mediante el constructor
    final List<Producto> listaProductos = [
      Producto(id: 1, nombre: 'Laptop Gamer', precio: 3500.00),
      Producto(id: 2, nombre: 'Mouse Inalámbrico', precio: 85.50),
      Producto(id: 3, nombre: 'Teclado Mecánico', precio: 220.00),
      Producto(id: 4, nombre: 'Monitor 24\'\' Full HD', precio: 650.00),
      Producto(id: 5, nombre: 'Auriculares Bluetooth', precio: 180.00),
      Producto(id: 6, nombre: 'Silla Ergonómica', precio: 490.00),
      Producto(id: 7, nombre: 'Soporte para Laptop', precio: 45.00),
      Producto(id: 8, nombre: 'Disco Duro Externo 1TB', precio: 210.00),
      Producto(id: 9, nombre: 'Webcam 1080p', precio: 130.00),
      Producto(id: 10, nombre: 'Pad Mouse RGB', precio: 55.00),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Productos'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // 3. Mapeo de la clase Producto en el Front-End
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: listaProductos.length,
        itemBuilder: (context, index) {
          final producto = listaProductos[index];

          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text(
                  '${producto.id}',
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                producto.nombre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'S/ ${producto.precio.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}