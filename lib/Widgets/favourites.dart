import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/categoriesMealitems.dart';
import 'package:groceryapp/Widgets/mealitems.dart';

class myfavouritesScreen extends StatefulWidget {
  // final Function isSavefavourite;
  final List<Meals> isSavefavouritelist;

  myfavouritesScreen(this.isSavefavouritelist);

  // const myfavouritesScreen({Key? key}) : super(key: key);
  @override
  _myfavouritesScreenState createState() => _myfavouritesScreenState();
}

class _myfavouritesScreenState extends State<myfavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return MealItems(title: widget.isSavefavouritelist[index].title,
          imageUrl: widget.isSavefavouritelist[index].imageUrl,
          affordabilitylevel: widget.isSavefavouritelist[index].affordability,
          complexitylevel: widget.isSavefavouritelist[index].complexity,
          duration: widget.isSavefavouritelist[index].duration,
          id: widget.isSavefavouritelist[index].id);
    },
      itemCount: widget.isSavefavouritelist.length,

    );
  }
}