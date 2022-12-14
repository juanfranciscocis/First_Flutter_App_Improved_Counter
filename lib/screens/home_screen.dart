
//WIDGET PERSONALIZADO
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{ //WIDGET SIN ESTADO

  //VARIABLE, PROPIEDAD!


  //CONSTRUCTOR DEL STATELESS WIDGET
  const HomeScreen({Key? key}) : super(key: key);

  //METODO PRINCIPAL DEL STATELESS WIDGET
  @override
  Widget build(BuildContext context) {

    //ESTILO DEL TEXTO
    const fontSize30 = TextStyle(fontSize: 30);

    //COUNTER
    int counter = 0;



    //BuildContext es el arbol de widgets completo
    return  Scaffold( //Lienzo donde pongo widgets (https://api.flutter.dev/flutter/material/Scaffold-class.html)
      //backgroundColor: Colors.blue,

      //(https://docs.flutter.dev/development/ui/widgets/basics) -> widgets
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 10.0, //Sombra!
      ), //Requiere un Widget de tipo PrefferedSizeWidget!!!
      body: Center( //Centra horizontal
        //child: Text('Clicks Counter'), //SOLO HAY UN CHILD EN LOS WIDGETS
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center, //Centro vertical
          crossAxisAlignment:CrossAxisAlignment.center,//Relativo al widget que esta mas grande!!!!, no me sirve
          children: <Widget> [ //Borro o no la constante debido a que no la requiero, necesito cambiar el font size
            Text('Numero de Clicks',style: fontSize30,),
            Text('$counter',style: fontSize30,),
          ],
        )
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //SIRVE PARA MOVER EL FLOATING ACTION BUTTON!!!
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add
        ),
        onPressed: () {
          counter++;
        },),


    );

    //throw UnimplementedError(); //EN CASO DE QUE NO ENVIE NINGUN WIDGET -> NO TENGO EL RETURN
  }


}