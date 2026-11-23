import 'package:componentes_flutter/routes/app_routes.dart';
import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        //backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon( AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
            //final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            //Navigator.pushNamed(context, 'card'); //.pushReplacement sirve para que no haya flecha para volver a atrás. El .pushNamed sirve para llevar es
            //pantalla a la pantalla que hayamos creado, en este caso en el main. Es la manera más adecuada.
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: AppRoutes.MenuOptions.length
      )
    );
  }
}