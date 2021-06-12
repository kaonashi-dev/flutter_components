import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget{
   
   @override
   _AnimatedContainerPage createState() => _AnimatedContainerPage();

}

class _AnimatedContainerPage extends State<AnimatedContainerPage>{

   double _width = 50.0;
   double _heigth = 50.0;
   Color _color = Colors.pink;

   BorderRadiusGeometry _borderRadius = BorderRadius.circular(9.0);

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
            title: Text('Animated container'),
         ),
         body: Center(
            child: AnimatedContainer(
               duration: Duration(milliseconds: 999),
               curve: Curves.fastLinearToSlowEaseIn,
               width: _width,
               height: _heigth,
               decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  color: _color
               ),
            ),
         ),
         floatingActionButton: FloatingActionButton(
            child: Icon( Icons.play_circle_fill_rounded ),
            onPressed: _toggleContainer,
         ),
      );
   }

   void _toggleContainer(){
      final random = Random();
      setState(() {

         _width = random.nextInt(300).toDouble();
         _heigth = random.nextInt(300).toDouble();
         _color = Color.fromRGBO(
            random.nextInt(300),
            random.nextInt(300), 
            random.nextInt(300), 
            1
         );

      });
   }

}