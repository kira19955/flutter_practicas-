import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'home'; 

  static final menuoptions = <Menuoptions> [
    //Menuoptions(route: 'home', icon: Icons.home, name: 'Home Screen', screen: HomeScreen()),
    Menuoptions(route: 'listview1', icon: Icons.list, name: 'List View ', screen: Listview1Screen()),
    Menuoptions(route: 'listview2', icon: Icons.list_alt, name: 'List View 2', screen: Listview2Screen()),
    Menuoptions(route: 'alert', icon: Icons.add_alert, name: 'Alert', screen: AlertScreen()),
    Menuoptions(route: 'card', icon: Icons.card_membership, name: 'Card', screen: CardScreen()),
    Menuoptions(route: 'avatar', icon: Icons.people_outline, name: 'Avatar', screen: AvatarScreen()),
    Menuoptions(route: 'animted', icon: Icons.animation, name: 'Animeted', screen: AnimatedScreen()),
    Menuoptions(route: 'inputs', icon: Icons.input_rounded, name: 'Inputs', screen: InputsScreen()),
    Menuoptions(route: 'slider', icon: Icons.slow_motion_video_rounded, name: 'Slider And Checks', screen: SliderScreen()),
    Menuoptions(route: 'listviewbuilder', icon: Icons.build_circle, name: 'List View Builder ', screen: ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home':(BuildContext context) => HomeScreen()});


   for (final element in menuoptions) {
     appRoutes.addAll({element.route:(BuildContext context) => element.screen});
   }
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes =  <String, WidgetBuilder>{

         'home':(BuildContext context) => HomeScreen(),
        'listview1':(BuildContext context) => Listview1Screen(),
        'listview2':(BuildContext context) => Listview2Screen(),
        'alert':(BuildContext context) => AlertScreen(),
        'card':(BuildContext context) => CardScreen(), 
      
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
}
}