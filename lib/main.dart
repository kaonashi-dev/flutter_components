import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_components/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
         GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
         const Locale('en', 'US'),
         const Locale('es', 'ES'),
      ],

      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: 'home',
      routes: getRoutes(),
      // home: HomePage(),
    );
  }
}
