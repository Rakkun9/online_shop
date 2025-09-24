import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
      ),
      body: Center(
        // Usamos un botón para simular el inicio de sesión
        child: ElevatedButton(
          onPressed: () {
            // Navegamos a la pantalla de home y eliminamos la de login del historial
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: const Text('Ingresar'),
        ),
      ),
    );
  }
}