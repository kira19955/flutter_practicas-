import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [

          CustomCArdType1(),
          SizedBox(height: 20,),
          CardType2(imageUrl: 'https://media.gq.com.mx/photos/66b3e2ab1eb4176c241add84/16:9/w_1920,c_limit/Mejores_series_de_anime.jpg', name: 'tanjiro' ,),
          SizedBox(height: 20,),
          CardType2(imageUrl: 'https://as01.epimg.net/meristation/imagenes/2021/03/13/reportajes/1615633069_923466_1616262218_noticia_normal.jpg', name: 'animes varios',),
          SizedBox(height: 20,),
          CardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRERBJTQzgdnlvGb4HEz-tH0SmNoHw2AbxX6Q&s')
          
        ],
      )
    );
  }
}

