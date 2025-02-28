import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final List<String> juegosFlutter = const [
  'Flutter: Butterfly Sanctuary',
  'I/O Pinball',
  'Super Dash',
  'I/O Flip',
  'Holobooth',
  'Dungeon Lord',
  'WalkScape',
  'Chess Remix',
  'Lost Vault',
  'Super TicTacToe',
  '4 Pics 1 Word',
  'Doodle Dash',
];
   
  const Listview2Screen({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ListView Tipo 2')),
        //backgroundColor: Colors.indigo,
        //elevation: 10,
      ),
      body: ListView.separated(
        itemCount: juegosFlutter.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(juegosFlutter[index]),
          trailing: Icon(Icons.arrow_circle_right_outlined, color: Colors.indigo,),
          onTap: () {
            
          },
          
        ),
        separatorBuilder: (context, index) => Divider(),
      )
    );
  }
}