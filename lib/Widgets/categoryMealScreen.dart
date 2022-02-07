import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/category_data.dart';
import 'package:groceryapp/Modules/listObjectsInstantiateClass.dart';
import 'mealitems.dart';

class CategriesMealScreen extends StatelessWidget {
  static const routeName = '/categories-meal';

  // final String CategoriesId;
  // final String CategoriesTitle;
  // CategriesMealScreen({required this.CategoriesId,required this.CategoriesTitle});
  @override
  Widget build(BuildContext context) {
    final routeArgsAccess =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final CategoriesTitle = routeArgsAccess['title'];
    final CategoriesId = routeArgsAccess['id'];
    // final CategoriesColor = routeArgsAccess['color'];
    final categoriesData = MealsDataWithObjInstantiate.where((element) {
      return element.categoties.contains(CategoriesId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text('${CategoriesTitle}'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItems(
              title: categoriesData[index].title,
              imageUrl: categoriesData[index].imageUrl,
              accessibilityLevels: categoriesData[index].accessiblityLevels,
              compelexityLevels: categoriesData[index].compelexityLevels,
              duration: categoriesData[index].duration,
            );
          },
          itemCount: categoriesData.length,
        ));
  }
}
