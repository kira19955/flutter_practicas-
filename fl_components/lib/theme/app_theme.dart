import 'package:flutter/material.dart';

class AppTheme {

  static Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
        primaryColor: Colors.indigo,
        //appbartheme
        appBarTheme: AppBarTheme(
          color:primary,
          elevation: 0
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor:primary)
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 0
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor : primary,
            shape: StadiumBorder(),
            elevation: 0
          )
        ),

        inputDecorationTheme: InputDecorationTheme(

          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary),
            borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(10), topRight: Radius.circular(10))
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary),
            borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(10), topRight: Radius.circular(10))
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(10), topRight: Radius.circular(10))
          ),

        )



      );
}
