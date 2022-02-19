import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/categoriesMealitems.dart';
import 'MealitemsCategoryScreen.dart';
class MealItems extends StatelessWidget {
  // const MealItems({Key? key}) : super(key: key);
  final String title;
  final String imageUrl;
  final Affordability affordabilitylevel;
  final Complexity complexitylevel;
  final int duration;
  final String id;
  MealItems({
    required this.title,
    required this.imageUrl,
    required this.affordabilitylevel,
    required this.complexitylevel,
    required this.duration,
    required this.id,
});

  String get complexityText{
    switch(complexitylevel){
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'unknown';
    }
  }

String get affordabilityText{
    switch(affordabilitylevel){
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
      default:
        return 'unknown';
    }
}
 void navigateToMealsScrn(BuildContext context){
  Navigator.of(context).pushNamed(MealitemsCategoryScreen.routeName,arguments: id);
 }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => navigateToMealsScrn(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(15),
        shadowColor: Colors.blue.withOpacity(0.6),
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(imageUrl,height: 285,width:double.infinity,fit: BoxFit.cover,),
                ),
                Positioned(
                  top: 190,
                  bottom: 0,
                  child: Container(
                    width: 240,
                    color: Colors.black.withOpacity(0.6),
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(17),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Text(title,style: TextStyle(
                        fontFamily: 'Quintessential-Regular',
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal
                      ),
                      softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ),
                             ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    Text('$duration min',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSansCondensed',
                    ),),
                    Icon(Icons.work),
                    Text(complexityText,style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSansCondensed',
                    ),),
                    Icon(Icons.attach_money),
                    Text(affordabilityText,style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSansCondensed',
                    ),),
                  ],
                )
              ],
            ),
            // SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
