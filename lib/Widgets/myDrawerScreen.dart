import 'package:flutter/material.dart';
import './myFiltersScreen.dart';
import './tabsScreen.dart';
class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);
Widget builderDrawer(String title , IconData icon , VoidCallback onTapHandling){
  return ListTile(
    leading: Icon(
      icon,
      size: 30,
    ),
    title: Text(
      title,
      style: TextStyle(
        fontFamily: 'Quintessential-regular',
        color: Colors.purple.shade300,
        fontSize: 22,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.9,
      ),
    ),
    onTap: onTapHandling,
  );
}
  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(30),
          height: 120,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 0),
          color: Colors.purple.withOpacity(0.6),
          alignment: Alignment.centerLeft,
          child: Text('lets Cook Meal !',style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).canvasColor,
            fontSize: 20,
            fontFamily: 'Quintessential-regular',
            letterSpacing: 1.1,

          ),),
        ),
        SizedBox(height: 10,),
        builderDrawer('filters', Icons.settings , (){
          Navigator.of(context).pushReplacementNamed(myFiltersScreen.routName);
        }),
        builderDrawer('Meals', Icons.restaurant , () {
          Navigator.of(context).pushReplacementNamed(myTabsBarScreen.routeName); // pushReplacementNamed is replace the existing page to new one
        }),
      ],
    ),);
  }
}
