import 'package:flutter/material.dart';

//rutas
import 'package:curso_udemy/src/pages/home_page.dart';
import 'package:curso_udemy/src/pages/avatar_page.dart';
import 'package:curso_udemy/src/pages/alert_page.dart';
import 'package:curso_udemy/src/pages/card_page.dart';
import 'package:curso_udemy/src/pages/animated_containerd.dart';
import 'package:curso_udemy/src/pages/input_page.dart';
import 'package:curso_udemy/src/pages/slider_page.dart';
import 'package:curso_udemy/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'       : (BuildContext context) => HomePage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'card'    : (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs'  : (BuildContext context) => InputPage(),
    'slider'  : (BuildContext context) => SliderPage(),
    'list'    : (BuildContext context) => ListaPage(),
  };
}
