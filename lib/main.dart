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
    1)Interaccion a LoginScreen -> navigation_home_screen.dart
    2)Interaccion a FitnessApp -> Login.dart
    3)Interaccion a HelpScreen -> navigation_home_screen.dart
    4)Interaccion a FeedbackScreen -> navigation_home_screen.dart
    5)Interaccion a InviteFriend -> navigation_home_screen.dart
    6)Interaccion a CompartirApp -> navigation_home_screen.dart
    7)Interaccion a AcercaDe -> navigation_home_screen.dart
    8)Interaccion de la AppFitnes
  C4:Interfaces(6)
    1)Login
    2)Home
    3)Ayuda
    4)Invitar a un Amigo
    5)Compartir App
    6)Acerca De
    7)MenuFitness
  C5:Widgets(8)
    1)RaisedButton
    2)Widget Caja de Texto -> feedback_screen.dart
    3)Widget de Texto e Imagenes -> invite_friend_screen.dart
    4)Widget de Texto e Imagenes -> help_screen.dart
    5)Widget Email -> login.dart
    6)Widget Password -> login.dart
    7)Widget ButtonLogin -> login.dart
    8)Widget Forgot(OlvidasteContraseña) -> login.dart
*/