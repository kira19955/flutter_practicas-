import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, 
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Populares', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), 
          ),

          SizedBox(height: 5),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return _MoviePoster();
              },
            ),
          ), 

        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster();

  @override
  Widget build(BuildContext context) { 
    return Container(
                  width: 130,
                  height:190,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'details', arguments: 'movie-instance');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: AssetImage('assets/no-image.jpg'),
                            image: NetworkImage('https://placehold.co/300x400/000000/FFFFFF/png'),
                             width: 130,
                             height: 190,
                             fit: BoxFit.cover,
                             ),
                        ),
                      ),

                         SizedBox(height: 5),

                         Text('Prueba',
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,
                         textAlign: TextAlign.center,)
                    ],
                  ),
                  ) ;
  }
}