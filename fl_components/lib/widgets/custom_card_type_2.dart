import 'package:flutter/material.dart';

class CardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CardType2({super.key, required this.imageUrl, this.name});

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
            image: NetworkImage(imageUrl ),
             placeholder: AssetImage('assets/jar-loading.gif'),
             width: double.infinity,
             height: 230,
             fit: BoxFit.cover,
             fadeOutDuration: Duration(milliseconds: 300),
            ),

            if(name != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name !))
        ],
      ),
    );
  }
}