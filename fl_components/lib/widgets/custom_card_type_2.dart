import 'package:flutter/material.dart';

class CardType2 extends StatelessWidget {
  const CardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://media.gq.com.mx/photos/66b3e2ab1eb4176c241add84/16:9/w_1920,c_limit/Mejores_series_de_anime.jpg'),
             placeholder: AssetImage('assets/jar-loading.gif'),
             width: double.infinity,
             height: 230,
             fit: BoxFit.cover,
             fadeOutDuration: Duration(milliseconds: 300),
            ),

            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text('hermoso paisaje'))
        ],
      ),
    );
  }
}