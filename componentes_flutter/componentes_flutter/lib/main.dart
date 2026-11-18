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
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    ); 
  }
}
