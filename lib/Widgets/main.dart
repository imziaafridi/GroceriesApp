import 'package:flutter/material.dart';
import '../Widgets/categoriesScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CategoriesPageWidget(),
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

        )
      )
    ),
  ));
}
