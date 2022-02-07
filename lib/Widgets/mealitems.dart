import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/categoriesMealitems.dart';
class MealItems extends StatelessWidget {
  // const MealItems({Key? key}) : super(key: key);
  final String title;
  final String imageUrl;
  final CompelexityLevels compelexityLevels;
  final AccessibilityLevels accessibilityLevels;
  final int duration;
  MealItems({
    required this.title,
    required this.imageUrl,
    required this.accessibilityLevels,
    required this.compelexityLevels,
    required this.duration
});
  String get complexityText{
    switch(compelexityLevels){
      case CompelexityLevels.easy:
        return 'easy';
        break;
      case CompelexityLevels.medium:
        return 'medium';
        break;
      case CompelexityLevels.hard:
        return 'hard';
        break;
      default:
        return 'not found';
    }
}
String get accessibiltyText{
    switch(accessibilityLevels){
      case AccessibilityLevels.affordable:
        return 'affordable';
        break;
      case AccessibilityLevels.pricey:
        return 'pricey';
        break;
      case AccessibilityLevels.luxurious:
        return 'luxurious';
      default:
        return 'not found';
    }
}
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: (){},
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    // bottomLeft: Radius.circular(15),
                    // bottomRight: Radius.circular(15),
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
                        fontFamily: 'Parisienne',
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
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [

                    Icon(Icons.schedule),
                    // SizedBox(height: 10,),
                    // SizedBox(width: 0,),
                    Text('$duration min',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSansCondensed',
                      // fontSize: 18,

                    ),),
                    // SizedBox(width: 28,),
                    Icon(Icons.work),
                    // SizedBox(width: 0,),
                    Text(complexityText,style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSansCondensed',

                      // fontSize: 18,
                    ),),
                    // SizedBox(width: 10,),
                    Icon(Icons.attach_money),
                    // SizedBox(width: 0,),
                    Text(accessibiltyText,style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSansCondensed',

                      // fontSize: 18,
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
