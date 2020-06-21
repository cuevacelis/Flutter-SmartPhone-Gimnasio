import 'package:best_flutter_ui_templates/principal/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/principal/navigation_home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter T3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: NavigationHomeScreen(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

/*
--Reglas aplicadas de Material Design:
  C1:Login(1)
    Sí
  C2:MaterialDesign(8)
    1)Boton Flotante
    2)Iconos
    3)Menu de Opciones
    4)MaterialStateColor
    5)FadeTransition
    6)BoxShadow 
    7)Canvas
    8)Button Center
  C3:Navegabilidad(8)
  C4:Interfaces(6)
  C5:Widgets(8)
*/