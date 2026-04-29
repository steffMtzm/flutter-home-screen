import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo (imagen en línea para que funcione en DartPad)
          SizedBox.expand(
            child: Image.network(
              'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
              fit: BoxFit.cover,
            ),
          ),

          // Oscurecer fondo para que el texto se lea mejor
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          // Contenido
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '¡Bienvenida!',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Mi Aplicación',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
