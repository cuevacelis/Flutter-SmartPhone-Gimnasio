import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/principal/app_theme.dart';
import 'package:best_flutter_ui_templates/fitness_app_reducido/fitness_app_home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/images/helpImage.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'cuevacelis@hotmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'placeholder contraseña :v',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      //Llamamos al Widget RaisedButton
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          //Interaccion a FitnessApp
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> FitnessAppHomeScreen(),
              ),
          );
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Iniciar Sesión', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Olvidaste tu contraseña?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );


    return Scaffold(
      backgroundColor: AppTheme.nearlyWhite,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            //Widget Email
            email,
            SizedBox(height: 8.0),
            //Widget Password
            password,
            SizedBox(height: 24.0),
            //Widget ButtonLogin
            loginButton,
            //Widget Forgot(OlvidasteContraseña)
            forgotLabel
          ],
        ),
      ),
    );
  }
}