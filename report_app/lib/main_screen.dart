import 'package:flutter/material.dart';
import 'custom_button.dart'; 
import 'login_screen.dart';
import 'register_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Bienvenidos al Himalaya",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // login
            BotonPersonalizado(
              texto: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              colorFondo: const Color.fromRGBO(142, 21, 21, 1),
              colorTexto: Colors.white,
              paddingHorizontal: 40,
              paddingVertical: 7,
            ),
            const SizedBox(height: 16),

            // Sign Up
            BotonPersonalizado(
              texto: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              colorFondo: Colors.white,
              colorTexto: const Color.fromRGBO(142, 21, 21, 1),
              colorBorde: const Color.fromRGBO(142, 21, 21, 1),
              paddingHorizontal: 32,
              paddingVertical: 5,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}