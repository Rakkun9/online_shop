import 'package:flutter/material.dart';

// Importaremos nuestras pantallas aquí
import 'package:online_shop/screens/login_screen.dart';
import 'package:online_shop/screens/home_screen.dart';
import 'package:online_shop/screens/cart_screen.dart';
import 'package:online_shop/screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Tienda Online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Definimos las rutas de nuestra aplicación
      initialRoute: '/login', // La primera pantalla que se mostrará
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/cart': (context) => const CartScreen(),
        // La ruta de detalle del producto la manejaremos de otra forma luego
      },
    );
  }
}