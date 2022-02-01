import 'package:flutter/material.dart';
import 'package:groceryapp/Widgets/categoryMealScreen.dart';
class CategoryItems extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  CategoryItems({
   required this.id,
    required this.title,
    required this.color
});

  void onTapCategories(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return CategriesMealScreen(CategoriesId: id,CategoriesTitle: title,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => onTapCategories(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Text(
            title,
            style:Theme.of(context).textTheme.caption,

        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.6),color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
