import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/listObjectsInstantiateClass.dart';

class MealitemsCategoryScreen extends StatelessWidget {
  static const routeName = '/mealitemsCategoryScreen';

  @override
  Widget build(BuildContext context) {
    final recieveDataArgs =
        ModalRoute.of(context)!.settings.arguments as String;
    final mealsDetail = MealsDataWithObjInstantiate.firstWhere(
        (meal) => meal.id == recieveDataArgs);
    Widget buiderContainer(Widget child) {
      return Container(
        height: 200,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          // color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
        ),
        child: child,
      );
    }

    Widget builderTitleText(String addtitle) {
      return Text(
        addtitle,
        style: TextStyle(
          fontSize: 22,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontFamily: 'Quintessential-Regular',
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'mealitemsCategoryScreen',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(height: 0,),
              Container(
                width: double.infinity,
                height: 250,
                child: Image.network(
                  mealsDetail.imageUrl,
                  height: 200,
                  fit: BoxFit.cover,
                  width: 22.0,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              builderTitleText('INGREDIENTS'),
              buiderContainer(
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 6.0,
                      color: Theme.of(context).canvasColor,
                      margin: EdgeInsets.all(6),
                      child: Text(
                        mealsDetail.ingredients[index],
                        overflow: TextOverflow.clip,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quintessential-Regular',
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                  itemCount: mealsDetail.ingredients.length,
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.vertical,
                ),
              ),
              builderTitleText('STEPS'),
              buiderContainer(ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.purple.withOpacity(0.9),
                      child: Text(
                        '# ${index + 1}',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Card(
                      color: Theme.of(context).canvasColor,
                      elevation: 20.0,
                      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          mealsDetail.steps[index],
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quintessential-Regular',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: mealsDetail.steps.length,
                padding: EdgeInsets.all(2),
              ))
            ],
          ),
        ));
  }
}
