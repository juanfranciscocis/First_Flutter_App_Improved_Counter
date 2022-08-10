
//WIDGET PERSONALIZADO
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  //CONSTRUCTOR DEL STATELESS WIDGET
  const HomeScreen({Key? key}) : super(key: key);

  //METODO PRINCIPAL DEL STATELESS WIDGET
  @override
  Widget build(BuildContext context) {
    //BuildContext es el arbol de widgets completo

    return const Scaffold( //Lienzo donde pongo widgets
      //backgroundColor: Colors.blue,
      body: Center(
        child: Text('HomeScreen'),
      ),
    );

    //throw UnimplementedError(); //EN CASO DE QUE NO ENVIE NINGUN WIDGET -> NO TENGO EL RETURN
  }


}