import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget{

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(title: Text('Alert')),
         body: Center(
            child: ElevatedButton(
               child: Text('MOSTRAR ALERTA'),
               onPressed: () => _alert(context),
               style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: StadiumBorder()
               ),
            ),
         ),
         floatingActionButton: FloatingActionButton(
           child: Icon( Icons.mode_standby_rounded),
           onPressed: () {

           },
         ),
     );
   }

   void _alert(BuildContext context){
      showDialog(
         context: context, 
         barrierDismissible: false,
         builder: (context) {
            return AlertDialog(
               title: Text('TITULO'),
               shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(19.0) ),
               content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     Text('Este es el contenido de la caja de la alerta'),
                     Image(
                        image: AssetImage('assets/app.png'),
                        height: 99.0,
                        fit: BoxFit.cover,
                     ),
                  ],
               ),
               actions: [
                  ElevatedButton(
                     child: Text('cancelar'),
                     onPressed: () => Navigator.of(context).pop(),
                     style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        shape: StadiumBorder()
                     ),
                  ),
                  ElevatedButton(
                     child: Text('ok'),
                     onPressed: () => Navigator.of(context).pop(),
                     style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        shape: StadiumBorder()
                     ),
                  ),
               ],
            );
         }
      );
   }

}