import 'package:componentes_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart'; //Buenas prácticas para meter todas las importaciones de todas las clases

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: {
        'listview1':(BuildContext context) => Listview1Screen(), 
        'listview2':(BuildContext context) => Listview2Screen(),
        'alert':(BuildContext context) => AlertScreen(),
        'card':(BuildContext context) => CardScreen(),
        'home':(BuildContext context) => HomeScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => AlertScreen(),
        );
      },
    ); 
  }
}
