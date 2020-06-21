import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/principal/app_theme.dart';
//Home
import 'package:best_flutter_ui_templates/custom_drawer/drawer_user_controller.dart';
import 'package:best_flutter_ui_templates/custom_drawer/home_drawer.dart';
//Navigation
//import 'package:best_flutter_ui_templates/principal/home_screen.dart';
import 'package:best_flutter_ui_templates/principal/help_screen.dart';
import 'package:best_flutter_ui_templates/principal/feedback_screen.dart';
import 'package:best_flutter_ui_templates/principal/invite_friend_screen.dart';
import 'package:best_flutter_ui_templates/principal/Login.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = LoginScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //devolución de llamada desde el cajón para reemplazar la pantalla según lo requerido el usuario al pasar DrawerIndex (índice Enum)
            },
            screenView: screenView,
            //Reemplazamos la vista de pantalla como necesitamos en las pantallas de inicio de navegación como Mi página de inicio, Pantalla de ayuda, Pantalla de comentarios, etc.
          ),
        ),
      ),
    );
  }

  //Lista del Menu Lateral->Interaccion
  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = LoginScreen();
        });
      } else if (drawerIndex == DrawerIndex.Help) {
        setState(() {
          screenView = HelpScreen();
        });
      } else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = FeedbackScreen();
        });
      } else if (drawerIndex == DrawerIndex.Invite) {
        setState(() {
          screenView = InviteFriend();
        });
      } else if (drawerIndex == DrawerIndex.About) {
        setState(() {
          screenView = LoginScreen();
        });
      }
    }
  }
}
