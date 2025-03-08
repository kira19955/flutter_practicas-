import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Avatars'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor:Colors.redAccent ,
              child: Text('SL'),
            ),
          )
        ],
       ) ,
       body: Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://xoandelugo.org/wp-content/uploads/2018/06/capitan-america.jpg'),
        ),
       ),
    );
  }
}

                     

