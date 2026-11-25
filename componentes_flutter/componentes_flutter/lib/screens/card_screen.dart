import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:componentes_flutter/widgets/custom_card_tipo1.dart';
import 'package:componentes_flutter/widgets/custom_card_tipo2.dart';
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
          CustomCardTipo1(),
          CustomCardTipo2(),
         ],
      ),
    );
  }
}