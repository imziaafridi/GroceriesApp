import 'package:flutter/material.dart';

class CategriesMealScreen extends StatelessWidget {
  final String CategoriesId;
  final String CategoriesTitle;
  CategriesMealScreen({required this.CategoriesId,required this.CategoriesTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoriesTitle,),

      ),
       body: Center(child: Text('welcome to categoriesMealScreen',style: Theme.of(context).textTheme.caption,)),
    );
  }
}
