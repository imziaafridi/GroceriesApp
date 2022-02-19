
enum Complexity {
  Simple,
  Challenging,
  Hard,
}
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}
// enum isVegetarian {
//   vegetarian,
//   semiVegetarain,
//   noneVegetarian,
// }

class Meals {
  final String id;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegetarian;
  final int duration;
  final String imageUrl;
  final bool isVegan;
  final bool isLactoseFree;
  final Map<String,bool> isStringBool;

const  Meals({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.complexity,
    required this.affordability,
    required this.duration,
    required this.isGlutenFree,
    required this.isVegetarian,
   required this.isLactoseFree,
   required this.isVegan,
  required this.isStringBool
  });
}
