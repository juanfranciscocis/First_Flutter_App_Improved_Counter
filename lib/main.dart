import 'package:flutter/material.dart';

void main(){
  //DONDE TODO MI CODIGO CORRE DE DART
  runApp(new MyApp()); //IMPORTA EL PAQUETE PRINCIPAL -> MATERIAL.DART

}


class MyApp extends StatelessWidget{
  //TODO STATELESS WIDGET RECIBE UN METODO BUILD
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //https://api.flutter.dev/flutter/material/MaterialApp-class.html

      home: Center(
        child: Text('Hola Mundo'),
      ),


    );
  }


}