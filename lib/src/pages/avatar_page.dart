import 'package:flutter/material.dart';
 
class AvatarPage extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {
    	return  Scaffold(
         appBar: AppBar(
            title: Text('avatar'),
            actions: [

               Container(
                  margin: EdgeInsets.only(right: 9.0),
                  child: CircleAvatar(
                     child: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBftyUAo76cg-Litu-LJAm1sfigvMq2ZwDBw&usqp=CAU'),
                     ),
                 ),
               ),

               Container(
                  margin: EdgeInsets.only(right: 9.0),
                  child: CircleAvatar(
                     child: CircleAvatar(
                        child: Text('RICK'),
                        backgroundColor: Colors.black,
                     ),
                 ),
               )
            
            ],
        	),
        	body: Center(
                  child: Container(
                  child: FadeInImage(
                     image: NetworkImage('https://p4.wallpaperbetter.com/wallpaper/410/59/609/rick-and-morty-tv-rick-sanchez-morty-smith-wallpaper-preview.jpg'),
                     placeholder: AssetImage('assets/jar-loading.gif'),
                  ),
               ),
            ),
      );
  }
}