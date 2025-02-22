import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(AppRoutes.menuoptions[index].name),
          leading: Icon(AppRoutes.menuoptions[index].icon),
          onTap: () {
            
            Navigator.pushNamed(context, AppRoutes.menuoptions[index].route);
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: AppRoutes.menuoptions.length)
    );
  }
}