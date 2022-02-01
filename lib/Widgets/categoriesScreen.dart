import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/dummy_data.dart';
import 'package:groceryapp/Widgets/category_items.dart';

class CategoriesPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dailyMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
          scrollDirection: Axis.vertical,

          children: DummyListData.map(
              (e) => CategoryItems(title: e.title, color: e.color,id: e.id,)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20)),
    );
  }
}
//sdbcbcb