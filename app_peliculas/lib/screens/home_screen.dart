import 'package:app_peliculas/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas en Cines'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.search_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            CardSwiper(),
        
            MovieSlider()
        
          ],
        ),
      )
    );
  }
}