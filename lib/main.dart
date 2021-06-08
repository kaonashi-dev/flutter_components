import 'package:flutter/material.dart';

import 'package:flutter_components/src/pages/home_page.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
         'home': (BuildContext context) => HomePage(),
         'alert': (BuildContext context) => AlertPage(),
         'avatar': (BuildContext context) => AvatarPage(),
      },
      // home: HomePage(),
    );
  }
}
