import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDailog(BuildContext context){
    showDialog(
      context: context,
       builder: (context) {
         return AlertDialog(
            elevation: 5,
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('este es el contenido de la alerta'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'))
            ],
         );
       },
       ); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed:()=> displayDailog(context),
        child: Text('Mostrar alerta')),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
    );
  }
}