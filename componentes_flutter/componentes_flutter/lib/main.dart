import 'package:componentes_flutter/screens/alert_screen.dart';
import 'package:componentes_flutter/screens/card_screen.dart';
import 'package:componentes_flutter/screens/home_screen.dart';
import 'package:componentes_flutter/screens/listview1_screen.dart';
import 'package:componentes_flutter/screens/listview2_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Listview2Screen(),
      routes: {
        'listview1':(BuildContext context) => Listview1Screen(), 
        'listview2':(BuildContext context) => Listview2Screen(),
        'alert':(BuildContext context) => AlertScreen(),
        'card':(BuildContext context) => CardScreen(),
        'home':(BuildContext context) => HomeScreen(),
      }
    ); 
  }
}
