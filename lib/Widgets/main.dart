import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/categoriesMealitems.dart';
import './MealitemsCategoryScreen.dart';
import './categoryMealScreen.dart';
import './tabsScreen.dart';
import './myFiltersScreen.dart';
import 'package:groceryapp/Modules/categoriesMealitems.dart';
import 'package:groceryapp/Modules/listObjectsInstantiateClass.dart';

void main() {
  runApp(myAPP());
}
class myAPP extends StatefulWidget {
  const myAPP({Key? key}) : super(key: key);
  @override
  State<myAPP> createState() => _myAPPState();
}
class _myAPPState extends State<myAPP> {
  Map<String,bool> _filters = {
    'lactose':false,
    'vegetarian':false,
    'vegon':false,
    'gluten':false,
  };
  List<Meals> availableMeals = MealsDataWithObjInstantiate;

  void _setfilters(Map<String,bool> filtersOverrrides){
    setState(() {
      _filters = filtersOverrrides;
      availableMeals = MealsDataWithObjInstantiate.where((meal) {
        if(_filters['lactose']! && !meal.isLactoseFree){
          return false;
        }
        if(_filters['vegon']!  && !meal.isVegan){
          return false;
        }
        if(_filters['gluten']! && !meal.isGlutenFree){
          return false;
        }
        if(_filters['vegetarian']! && !meal.isVegetarian){
          return false;
        }
        return true;
      }).toList();
    });
  }
  bool _isfiltersfilled(Map<String,bool> onPressIcon){
    return availableMeals.any((meal) => meal.isStringBool == onPressIcon);
  }
  List<Meals> isMealsList = [];
  void _isfavourite(String onClick){
   final favouritemeal = isMealsList.indexWhere((meal) => meal.id == onClick);
    if(favouritemeal >= 0){
      setState(() {
        isMealsList.removeAt(favouritemeal);
      });
    }else{
      setState(() {
        isMealsList.add(MealsDataWithObjInstantiate.firstWhere((mealId) => mealId.id == onClick));
      });
    }
  }
  bool _onPressIconChanges(String mealId){
   return isMealsList.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: myTabsBarScreen.routeName,
    routes: {
       myTabsBarScreen.routeName : (ctx) => myTabsBarScreen(isMealsList),
      CategriesMealScreen.routeName : (ctx) => CategriesMealScreen(availableMeals),
      MealitemsCategoryScreen.routeName : (ctx) => MealitemsCategoryScreen(_isfavourite,_onPressIconChanges),
      myFiltersScreen.routName : (ctx) => myFiltersScreen(_filters,_setfilters,_isfiltersfilled),
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
      )
    ),
  );
  }
}