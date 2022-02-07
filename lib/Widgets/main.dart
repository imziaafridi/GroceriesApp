import 'package:flutter/material.dart';
import 'categoriesScreen.dart';
import 'categoryMealScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
       '/' : (ctx) => CategoriesPageWidget(),
      '/categories-meal' : (ctx) => CategriesMealScreen(),
    },
    theme: ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.amber,
      canvasColor: Color.fromRGBO(240, 220, 200, 1),
      textTheme: ThemeData.light().textTheme.copyWith(
        bodyText1: TextStyle(
          color: Color.fromRGBO(220, 60, 60, 1),
        ),
            bodyText2: TextStyle(
          color:Color.fromRGBO(200, 60, 60, 1),
      ),
        caption: TextStyle(
           fontWeight: FontWeight.bold,
          fontSize: 22.0,
          fontFamily: 'Parisienne',

        ),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.red.withOpacity(0.6),
        elevation: 4.0,
        shadowColor: Colors.pinkAccent.withOpacity(0.6),
        titleTextStyle: TextStyle(
          fontFamily: 'Parisienne',
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
brightness: Brightness.light,
        // titleSpacing: 1.6,

      )

    ),
  ));
}
