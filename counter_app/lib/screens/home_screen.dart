import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30  = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home Screen')
          ),
          elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Click Counter', style: fontSize30),
            Text('0', style: fontSize30)
          ],
        ),
      ), 
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("hola mundo");
        },
      ),
    );
  }

}