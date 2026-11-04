import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), //Titulo del AppBar
        backgroundColor: Colors.blueGrey,
        elevation: 10, //Para quitar la sombra del AppBar
      ),
      backgroundColor: Colors.lightBlueAccent, //Color de fondo de la pantalla
      body: Center(
          child: 
            const Column( // https://api.flutter.dev/flutter/widgets/Column-class.html
              mainAxisAlignment: MainAxisAlignment.center, //Alineacion de los elementos en el eje principal (vertical)
              children: <Widget>[
                Text('Primera Aplicación', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Estilos secundarios', style: TextStyle(fontSize: 16, color: Colors.white)),
                Expanded(
                  child: Image(
                    image: AssetImage('prueba/flutter_icon.png'),//https://api.flutter.dev/flutter/painting/AssetImage-class.html
                  ),
                ),
              ],
            ) //Text('Hola Mundo desde HomeScreen') 
      ),
    );
  }
}