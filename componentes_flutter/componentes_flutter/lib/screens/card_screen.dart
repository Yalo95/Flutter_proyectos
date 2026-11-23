import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas (cards)')  
      ,),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),//Para ejercer separación entre los botones.
         children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.highlight_outlined, color: AppTheme.primary),
                  title: Text('Aquí va el título del Card'),
                  subtitle: Text('Ex ut duis cupidatat dolore deserunt est aliqua nostrud quis voluptate tempor officia exercitation.'),
                )
              ],
            ),
          )
         ],
      ),
    );
  }
}