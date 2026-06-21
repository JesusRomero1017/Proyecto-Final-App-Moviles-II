import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/menu_layout.dart';

void main() {
  runApp(const HealthTrackerApp());
}

class HealthTrackerApp extends StatelessWidget {
  const HealthTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Tracker',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),

      // Pantalla inicial
      initialRoute: '/',

      // Rutas de la app
      routes: {
        '/': (context) => const LoginScreen(),
        '/menu': (context) => const MenuLayout(),
      },
    );
  }
}