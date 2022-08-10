
//WIDGET PERSONALIZADO
import 'dart:ffi';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{ //WIDGET SIN ESTADO
  //CONSTRUCTOR DEL STATELESS WIDGET
  const CounterScreen({Key? key}) : super(key: key);

  //Estado, administra el estado del widget!!!
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  //COUNTER
  int counter = 0;
  
  //INCREASE 
  void _increase(){
    setState(() {
      counter++;
    });
  }

  //DECREASE
  void _decrease(){
    setState(() {
      counter--;
    });
  }

  //RESET
  void _reset(){
    setState(() {
      counter = 0;
    });
  }


  //METODO PRINCIPAL DEL STATELESS WIDGET
  @override
  Widget build(BuildContext context) {

    //ESTILO DEL TEXTO
    const fontSize30 = TextStyle(fontSize: 30);



    //BuildContext es el arbol de widgets completo
    return  Scaffold( //Lienzo donde pongo widgets (https://api.flutter.dev/flutter/material/Scaffold-class.html)
      //backgroundColor: Colors.blue,

      //(https://docs.flutter.dev/development/ui/widgets/basics) -> widgets
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 10.0, //Sombra!
      ), //Requiere un Widget de tipo PrefferedSizeWidget!!!
      body: Center( //Centra horizontal
        //child: Text('Clicks Counter'), //SOLO HAY UN CHILD EN LOS WIDGETS
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center, //Centro vertical
          crossAxisAlignment:CrossAxisAlignment.center,//Relativo al widget que esta mas grande!!!!, no me sirve
          children: <Widget> [ //Borro o no la constante debido a que no la requiero, necesito cambiar el font size
            const Text('Numero de Clicks',style: fontSize30,),
            Text('$counter',style: fontSize30,),
          ],
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //SIRVE PARA MOVER EL FLOATING ACTION BUTTON!!!
      floatingActionButton:  CustomFloattingActions(increaseFunction: _increase, resetFunction: _reset, decreaseFunction: _decrease,),
    );

    //throw UnimplementedError(); //EN CASO DE QUE NO ENVIE NINGUN WIDGET -> NO TENGO EL RETURN
  }
}

class CustomFloattingActions extends StatelessWidget {
  
  final Function increaseFunction;
  final Function decreaseFunction;
  final Function resetFunction;

  const CustomFloattingActions({
    Key? key, required this.increaseFunction, required this.decreaseFunction, required this.resetFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        FloatingActionButton(
          child:  Icon(
            Icons.exposure_plus_1
          ),
          onPressed: ()=>increaseFunction()),

        const SizedBox(width: 50,), //Espacio entre los botones

        FloatingActionButton(
          child: const Icon(
            Icons.refresh
          ),
          onPressed: ()=>resetFunction()),


        const SizedBox(width: 50,), //Espacio entre los botones


        FloatingActionButton(
          child: const Icon(
              Icons.exposure_minus_1
          ),
          onPressed: ()=>decreaseFunction()),


      ],
    );
  }
}