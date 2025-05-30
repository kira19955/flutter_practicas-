import 'package:app_peliculas/providers/movie_provaider.dart';
import 'package:app_peliculas/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());


class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> MovieProvaider(), lazy: false, )
    ],
    child: const MyApp(),);
    
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_)=> const HomeScreen(),
        'detail': (_)=> const DetailsScreen(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme:const AppBarTheme(
          color: Colors.indigo
        )
      ),
    );
  }
}