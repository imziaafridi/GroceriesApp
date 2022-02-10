
enum CompelexityLevels {
  easy,
  medium,
  hard,
}
enum AccessibilityLevels {
  affordable,
  pricey,
  luxurious,
}
enum isVegetarian {
  vegetarian,
  semiVegetarain,
  noneVegetarian,
}

class Meals {
  final String id;
  final String title;
  final List<String> categoties;
  final List<String> ingredients;
  final List<String> steps;
  final CompelexityLevels compelexityLevels;
  final AccessibilityLevels accessiblityLevels;
  final bool isGlutenfree;
  final isVegetarian isVegeterian;
  final int duration;
  final String imageUrl;

 const Meals({
    required this.id,
    required this.categoties,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.compelexityLevels,
    required this.accessiblityLevels,
    required this.duration,
    required this.isGlutenfree,
    required this.isVegeterian,
  });
}
