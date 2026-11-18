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
            final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            Navigator.push(context, route);
          },
         ),
         separatorBuilder: (context, index) => Divider(),
         itemCount: 5,
      ),
    );
  }
}