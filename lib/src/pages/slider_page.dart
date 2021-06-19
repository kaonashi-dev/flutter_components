import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget{

   @override
   _SliderPageState createState() => _SliderPageState();  

}

class _SliderPageState extends State<SliderPage>{

   double _valueSlider = 30.0;
   bool _statusCheck = false;

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
            title: Text('Slider'),
         ),
         body: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
               children: <Widget>[
                  _slider(),
                  Divider(),
                  Text('$_valueSlider'),
                  Divider(),
                  _getCheck(),
                  _getSwitch(),
                  Divider(),
                  Expanded(child: _getImg())
               ],
            )
         ),
      );
   }

   Widget _slider(){
      return Slider(
         activeColor: Colors.deepPurpleAccent,
         label: 'Tamaño de la imagen',
         // divisions: 15,
         value: _valueSlider, 
         min: 10.0,
         max: 500.0,
         onChanged: (_statusCheck == true) ? null : (value) {
            setState(() {
              _valueSlider = value;
            });
         }
      );
   }

   Widget _getImg(){
      return Image(
         image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Gnulinux.svg/1200px-Gnulinux.svg.png'),
         width: _valueSlider,
         fit: BoxFit.contain,
      );
   }

   Widget _getCheck(){
      // return Checkbox(
      //    value: _statusCheck, 
      //    onChanged: (status) {
      //       setState(() {
      //          _statusCheck = status;
      //       });
      //    }
      // );

      return CheckboxListTile(
         title: Text('Descativar slider'),
         value: _statusCheck, 
         onChanged: (status) {
            setState(() {
               if(status != null){
                  _statusCheck = status;
               }
            });
         }
      );
   }

   Widget _getSwitch(){
      return SwitchListTile(
         title: Text('Descativar slider'),
         value: _statusCheck, 
         onChanged: (status) {
            setState(() {
               _statusCheck = status;
            });
         }
      );
   }

}