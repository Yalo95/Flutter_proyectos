import 'package:flutter/material.dart';
import 'package:prueba/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    //throw UnimplementedError();
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //Para quitar el banner o etiqueta de debug
      home: HomeScreen()
    );
  }
}