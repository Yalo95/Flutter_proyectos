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
            image: NetworkImage('https://t4.ftcdn.net/jpg/18/27/86/75/240_F_1827867559_0ea22v3Ykr9twrPa2ufP3WtLScGPdmNI.jpg'), //Para poner la url de una imagen, da menos fallo los formatos jpg y png
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //Para ensanchar la imagen a tope, ocupa todo el ancho que puede.
            height: 300,
            fit: BoxFit.cover, //Para que si le pones una altura no recorte demasiado la foto, porque ocupa todo el width y se desajusta
            fadeInDuration: Duration(milliseconds: 3000), //Para que tarde 3 segundos en cargarse la imagen, con un efecto difuminador.
          )
        ],
      ),
    );
  }
}