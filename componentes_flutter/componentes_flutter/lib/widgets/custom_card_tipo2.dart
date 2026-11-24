import 'dart:convert';

import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  const CustomCardTipo2({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
           //image: NetworkImage(url) //Para poner la url de una imagen, da menos fallo los formatos jpg y png
            placeholder: AssetImage('assets/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}