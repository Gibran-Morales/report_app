import 'package:flutter/material.dart';
import 'data_screen.dart';
import 'app_report.dart';
import 'user_manager.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = UserManager.getUserData();
    if (userData == null) {
      return const Scaffold(
        body: Center(
          child: Text(
            'No hay datos de usuario disponibles',
            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 57, 54, 244)),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
        backgroundColor: const Color.fromRGBO(142, 21, 21, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Bienvenido',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataScreen(
                      title: 'Datos de Usuario',
                      name: userData['name'],
                      email: userData['email'],
                      phone: userData['phone'],
                      password: userData['password'],
                      isLogin: true,
                    ),
                  ),
                );
              },
              child: const Text('Ver Datos'),
            ),
          ],
        ),
      ),
    );
  }
}
