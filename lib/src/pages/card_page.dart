import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(title: Text('Cards'),),
         body: ListView(
            padding: EdgeInsets.all(11.0),
            children: [
               _card1(),
               SizedBox(height: 30.0),
               _card2(),
               SizedBox(height: 30.0),
               _card3(),
               SizedBox(height: 30.0),
               _card2(),
            ],
         ),
      );
   }

   Widget _card1(){
      return Card(
         child: Column(
            children: [
               ListTile(
                  leading: Icon( Icons.airport_shuttle_rounded, color: Colors.purple),
                  title: Text('Este es el titulo de la tarjeta'),
                  subtitle: Text('Esta es na descripción detallada de la tarjeta'),
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     TextButton(
                        onPressed: null,
                        child: Text('Cancelar')
                     ),
                     TextButton(
                        onPressed: null,
                        child: Text('Aceptar')
                     ),
                  ],
               )
            ],
         ),
      );
   }

   Widget _card2(){
      final card = Container(
         child: Column(children: [
            FadeInImage(
               placeholder: AssetImage('assets/jar-loading.gif'), 
               image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSThWppxnyqm9F9nPuoKo7gT82ImYgYQVsLTg&usqp=CAU'),
               fadeInDuration: Duration(milliseconds: 170),
               height: 300.1,
               fit: BoxFit.cover,
            ),
            // Image(
            //    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSThWppxnyqm9F9nPuoKo7gT82ImYgYQVsLTg&usqp=CAU')
            // ),
            Container(
               padding: EdgeInsets.all(9.0),
               child: Text('Descripción de la imagen'),
            )
         ]),
      );

      return Container(
         decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
               BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 3.0
               )
            ],
            borderRadius: BorderRadius.circular(30.0),
         ),
         child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: card,
         ),
      );
   }

      Widget _card3(){
      return Card(
         elevation: 9,
         shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(19.0) ),
         child: Column(
            children: [
               ListTile(
                  leading: Icon( Icons.airport_shuttle_rounded, color: Colors.purple),
                  title: Text('Este es el titulo de la tarjeta'),
                  subtitle: Text('Esta es na descripción detallada de la tarjeta'),
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     TextButton(
                        onPressed: null,
                        child: Text('Cancelar')
                     ),
                     TextButton(
                        onPressed: null,
                        child: Text('Aceptar')
                     ),
                  ],
               )
            ],
         ),
      );
   }
}