import 'package:app_peliculas/searchs/searchs_delegate.dart';
import 'package:app_peliculas/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_peliculas/providers/movie_provaider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final moviesProvaider = Provider.of<MovieProvaider>(context, listen: true);


    return Scaffold(
        appBar: AppBar(
          title: const Center( child:Text("peliculas en cines")),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: ()=> showSearch(context: context, delegate: MovieSearchDelegate()), icon: const Icon(Icons.search_outlined))
          ],
        ),
        //SingleChildScrollView  Permite hacer Scrool
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvaider.onDisplayMovies),

              //slaider de peliculas

              MovieSlaider(movies: moviesProvaider.popularMovies, title: "POPULARES", onNextPage: ()=> moviesProvaider.getPopularMovies() ,),
            ],
          ),
        ));
  }
}
