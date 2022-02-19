import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/categoriesMealitems.dart';
import 'package:groceryapp/Modules/listObjectsInstantiateClass.dart';
import 'mealitems.dart';

class CategriesMealScreen extends StatefulWidget {
  static const routeName = '/categories-meal';
  final List<Meals> availableMeals;
  CategriesMealScreen(this.availableMeals);
  @override
  State<CategriesMealScreen> createState() => _CategriesMealScreenState();
}
class _CategriesMealScreenState extends State<CategriesMealScreen> {
 late List<Meals> myMealsDetails;
  var Categorytitle;
  var isInitialdidChangeDep = false;

 void removeId(String onDelete){
   setState(() {
     (myMealsDetails as List<Meals>).removeWhere((element) => element.id == onDelete);
   });
 }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!isInitialdidChangeDep){
      final routeArgsAccess =
      ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      Categorytitle = routeArgsAccess['title'];
      final CategoriesId = routeArgsAccess['id'];
      myMealsDetails = widget.availableMeals.where((element) {
        return element.categories.contains(CategoriesId);
      }).toList();
      isInitialdidChangeDep = true;
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$Categorytitle'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItems(
              title: myMealsDetails[index].title,
              imageUrl: myMealsDetails[index].imageUrl,
              affordabilitylevel: myMealsDetails[index].affordability,
              complexitylevel: myMealsDetails[index].complexity,
              duration: myMealsDetails[index].duration,
              id: myMealsDetails[index].id,
            );
          },
          itemCount: myMealsDetails.length,
        ));
  }
}
