import 'package:flutter/material.dart';
import './myDrawerScreen.dart';
class myFiltersScreen extends StatefulWidget {
  final Function savefilters;
  final Map<String,bool> currentMap;
  final Function isfilterIconOnPress;
  myFiltersScreen(this.currentMap,this.savefilters,this.isfilterIconOnPress);
  // const myFiltersScreen({Key? key}) : super(key: key);
  static const routName = '/myFiltersScreen';
  @override
  State<myFiltersScreen> createState() => _myFiltersScreenState();
}
class _myFiltersScreenState extends State<myFiltersScreen> {
  bool _isVegetarianfree = false;
  bool _islectosefree = false;
  bool _isvegonfree = false;
  bool _isglutinfree = false;

  @override
  void initState() {
    // TODO: implement initState
    _isglutinfree = widget.currentMap['gluten']!;
    _isvegonfree = widget.currentMap['vegon']!;
    _isVegetarianfree = widget.currentMap['vegetarian']!;
    _islectosefree = widget.currentMap['lactose']!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   final Map<String,bool> isfiltersSetArg = {
      'lactose':_islectosefree,
      'vegetarian':_isVegetarianfree,
      'vegon':_isvegonfree,
      'gluten':_isglutinfree,
    };

   Widget switchIcon(IconData icon) {
     return Icon(icon);
   }

    Widget buidSwitchTiles(bool isValue , String title , String subtitle , Function(bool)? isValueUpdated){
      return SwitchListTile(
        value: isValue,
        title: Text(title),
        subtitle: Text(subtitle),
        onChanged: isValueUpdated,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).canvasColor,
          fontSize: 25,
          fontFamily: 'Quintessential-regular',
          letterSpacing: 0.9,
        ),),
        elevation: 4.0,
        centerTitle: true,
        actions: [
          IconButton(icon: switchIcon(widget.isfilterIconOnPress(isfiltersSetArg) ? Icons.save : Icons.save_outlined)  ,color: Colors.white.withOpacity(0.8),onPressed: () {
            isfiltersSetArg;
            widget.savefilters(isfiltersSetArg);
          },),
        ],
      ),
      drawer: myDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 30,horizontal: 0),
            child: Text('adjust your favourite meals here!',style: TextStyle(
              letterSpacing: 0.8,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'Quintessential-Regular',
            ),),
          ),
          Expanded(child: ListView(
            children: [
              buidSwitchTiles(_isVegetarianfree , 'Vegetarianfree', 'Only includes Vegetarian Meals ', (value) {
                setState(() {
                  _isVegetarianfree = value;
                });
              }),
              buidSwitchTiles(_isglutinfree , 'Glutinfree', 'Only includes glutinfree Meals', (value) {
                setState(() {
                  _isglutinfree = value;
                });
              }),
              buidSwitchTiles(_islectosefree , 'Lectosefree', 'Only includes lactosefree Meals', (value) {
                setState(() {
                  _islectosefree = value;
                });
              }),
              buidSwitchTiles(_isvegonfree , 'Vegonfree', 'Only includes vegonfree Meals', (value) {
                setState(() {
                  _isvegonfree = value;
                });
              }),
            ],
          )),
        ],
      ),
    );
  }
}
