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
               _card2()
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
      return Card(
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
   }
}