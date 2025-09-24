import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Importaremos nuestras pantallas aquí
import 'package:online_shop/providers/cart_provider.dart';
import 'package:online_shop/screens/login_screen.dart';
import 'package:online_shop/screens/home_screen.dart';
import 'package:online_shop/screens/cart_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La mejor tienda del mundo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/cart': (context) => const CartScreen(),
      },
    );
  }
}