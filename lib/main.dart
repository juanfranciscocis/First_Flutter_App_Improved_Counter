import 'package:counter_app_first_app/screens/counter_screen.dart';
import 'package:counter_app_first_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  //DONDE TODO MI CODIGO CORRE DE DART
  runApp(const MyApp()); //IMPORTA EL PAQUETE PRINCIPAL -> MATERIAL.DART

}


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key); //CONSTRUCTOR DE LA CLASE MyApp

  //TODO STATELESS WIDGET RECIBE UN METODO BUILD
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( //WIDGET PRINCIPAL! LE DECIMOS QUE ES UN MATERIAL DESIGN APP -> COMO ESTO ES ESTATICO ENTONCES USO CONST
      //https://api.flutter.dev/flutter/material/MaterialApp-class.html -> EXPLICACION DE LA CLASE PRINCIPAL
      debugShowCheckedModeBanner: false, //HACE QUE DESAPARESCA EL BANNER ROJO DE LA PANTALLA DEL EMULADOR ('DEBUG')

        // home es el homeScreen principal!!!
      //home: HomeScreen() //importa home_screen.dart
      home: CounterScreen(),


    );
  }


}