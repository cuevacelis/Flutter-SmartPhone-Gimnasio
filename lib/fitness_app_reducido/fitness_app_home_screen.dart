import 'fintness_app_theme.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation_view/bottom_bar_view.dart';
//Iconos
import 'package:best_flutter_ui_templates/fitness_app_reducido/models/tabIcon_data.dart';
//Navigate
import 'package:best_flutter_ui_templates/fitness_app_reducido/traning/training_screen.dart';
import 'my_diary/my_diary_screen.dart';

class FitnessAppHomeScreen extends StatefulWidget {
  @override
  _FitnessAppHomeScreenState createState() => _FitnessAppHomeScreenState();
}

class _FitnessAppHomeScreenState extends State<FitnessAppHomeScreen> with TickerProviderStateMixin {

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: FintnessAppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;//Selecciono el primer Elemnto de la lista de abajo
    tabBody = MyDiaryScreen();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: FintnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  barraNavegacionAbajo(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget barraNavegacionAbajo() {
    return Column(
      children: <Widget>[
        const Expanded(//Con esto pongo la lista abajo
          child: SizedBox(),
        ),
        //Widget de Navbar Descargado de Internet y personalizado por mi :v 
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
                setState(() {
                  tabBody = MyDiaryScreen();
                });
            } else if (index == 1 || index == 3) {
                setState(() {
                  tabBody = TrainingScreen();
                });
            }
          },
        ),
      ],
    );
  }
}
