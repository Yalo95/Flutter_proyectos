import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Componentes de Flutter'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
         itemBuilder: (context,index) => ListTile(
          leading: Icon(Icons.piano),
          title: Text('Nombre de la ruta'),
          onTap: (){
            //final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            Navigator.pushNamed(context, 'card'); //.pushReplacement sirve para que no haya flecha para volver a atrás. El .pushNamed sirve para llevar esa 
                                                  //pantalla a la pantalla que hayamos creado, en este caso en el main. Es la manera más adecuada.
          },
         ),
         separatorBuilder: (context, index) => Divider(),
         itemCount: 5,
      ),
    );
  }
}