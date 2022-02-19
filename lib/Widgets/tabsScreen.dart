import 'package:flutter/material.dart';
import 'package:groceryapp/Modules/categoriesMealitems.dart';
import './categoriesScreen.dart';
import './favourites.dart';
import './myDrawerScreen.dart';

class myTabsBarScreen extends StatefulWidget {
  static const routeName = '/tabsScreen';
  final  List<Meals> isSavefavourite;
  myTabsBarScreen(this.isSavefavourite);
  @override
  State<myTabsBarScreen> createState() => _myTabsBarScreenState();
}

class _myTabsBarScreenState extends State<myTabsBarScreen> {
  // const myTabsBarScreen({Key? key}) : super(key: key);
  @override
  late List <Map<String,dynamic>> screens;
  void initState() {
    // TODO: implement initState
       screens = [
      { 'screen' : CategoriesPageWidget() , 'title' : 'Categories'},
      {'screen':myfavouritesScreen(widget.isSavefavourite) , 'title' : 'Favourites'},
    ];
    super.initState();
  }

  int onSelectedIndex = 0;
  void onSelected(int index) {
    setState(() {
      onSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          screens.elementAt(onSelectedIndex)['title'],
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        elevation: 4.0,
      ),
      drawer: myDrawer(),
      body: screens.elementAt(onSelectedIndex)['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onSelected,
        currentIndex: onSelectedIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
        ],
      ),
    );
  }
}
