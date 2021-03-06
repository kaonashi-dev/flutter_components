import 'package:flutter/material.dart';

import 'package:flutter_components/src/pages/home_page.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/card_page.dart';
import 'package:flutter_components/src/pages/animated_container_page.dart';
import 'package:flutter_components/src/pages/inputs_page.dart';
import 'package:flutter_components/src/pages/list_view_page.dart';
import 'package:flutter_components/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getRoutes(){
   return <String, WidgetBuilder>{
      'home': (BuildContext context) => HomePage(),
      'alert': (BuildContext context) => AlertPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage(),
      'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
      'inputs': (BuildContext context) => InputsPage(),
      'slider': (BuildContext context) => SliderPage(),
      'list': (BuildContext context) => ListViewPage(),
   };
}