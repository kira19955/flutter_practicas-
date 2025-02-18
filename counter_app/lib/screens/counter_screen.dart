import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

    int counter = 15;

    void increase(){
      counter ++;
      setState(() {
        
      });

    }

    void decremen(){
      counter --;
      setState(() {
        
      });

    }


    void restar(){
      counter = 0;
      setState(() {
        
      });

    }



  @override
  Widget build(BuildContext context) {

    const fontSize30  = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Counter Screen')
          ),
          elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Click Counter', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(increaseFn: increase, decremenFn: decremen, restarFn: restar,),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decremenFn;
  final Function restarFn;

  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.decremenFn, required this.restarFn
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decremenFn(),
          child: Icon(Icons.exposure_minus_1), 
        ),
     
        FloatingActionButton(
          onPressed: () => restarFn(),
          child: Icon(Icons.restart_alt),//() => setState(() => counter = 0),
        ),
    
        FloatingActionButton(
          onPressed: () => increaseFn(), //() => setState(() => counter++),
          child: Icon(Icons.exposure_plus_1_outlined),
        ),
    
        
      ],
    );
  }
}