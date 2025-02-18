import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

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
   
  const Listview1Screen({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...juegosFlutter.map((game) => ListTile(
            title: Text(game),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ))
        ],
      )
    );
  }
}