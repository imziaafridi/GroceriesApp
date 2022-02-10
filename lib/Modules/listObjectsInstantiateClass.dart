// import 'dart:ui';
import 'package:flutter/material.dart';
import 'category_data.dart';
import 'categoriesMealitems.dart';

const DummyListData = const [
  CategoriesData(id: 'Z1', title: 'France', color: Colors.blueGrey),
  CategoriesData(id: 'Z2', title: 'Germany', color: Colors.green),
  CategoriesData(id: 'Z3', title: 'BreakFast', color: Colors.blue),
  CategoriesData(id: 'Z4', title: 'Asian', color: Colors.red),
  CategoriesData(id: 'Z5', title: 'Humbergers', color: Colors.purple),
  CategoriesData(id: 'Z6', title: 'Light & Lovely', color: Colors.amber),
  CategoriesData(id: 'Z7', title: 'Exotic', color: Colors.blueAccent),
  CategoriesData(id: 'Z8', title: 'Summer', color: Colors.cyan),
  CategoriesData(id: 'Z9', title: 'FreNCH', color: Colors.brown),
  CategoriesData(id: 'Z10', title: 'Italian', color: Colors.lightGreen),
];
const MealsDataWithObjInstantiate = const [
  Meals(
    id: 'S1',
    categoties: ['Z1', 'Z2', 'Z3', 'Z4'],
    title: 'Chicken_Tekka_Recipie',
    imageUrl:
        'https://www.kindpng.com/picc/m/193-1932467_chicken-tikka-non-veg-food-png-transparent-png.png',
    ingredients: [
      'chicken',
      'yogurt',
      'spices',
      'ginger',
      'chilli',
      'raw papaya',
      'garlic',
      'lemon'
    ],
    steps: [
      'Soak chicken in vinegar and salt solution for 20 minutes. Pro Tip: This helps clean the chicken and removes the blood in the chicken leg.',
      'Wash the chicken thoroughly after soaking and pat dry. Now, pierce the chicken with a fork. Then insert deep cuts across the grain. The cuts should be deep and the knife should touch the bone of the chicken.',
      'Mix all the ingredients of marination in a bowl.',
      'Apply all over the chicken and marinate overnight in the fridge. Or keep for 4-6 hours at room temperature in a cool place. Cover the pot with mesh or thin cloth to allow air circulation if keeping out of the fridge.',
      'Cook tikka in a wide pot on medium-high heat for 10-15 minutes. Cover the pot while cooking. Then burn excess water on high heat.',
      'To smoke: Place tikka in a wide pot with a tight lid. Put a piece of foil or a small metal bowl in the center of the pot. Now, heat charcoal on high flame until red hot then transfer coal carefully with the help of tongs to a pan. Drizzle little oil over the coal and cover the lid tightly to trap the smoke. Smoke for 7-10 minutes.',
      'Now heat the smoked tikka on the direct flame until crispy and serve. Or alternatively, you can grill tikka will little oil on a grill pan until slightly crispy. Grill on low heat.',
    ],
    compelexityLevels: CompelexityLevels.easy,
    accessiblityLevels: AccessibilityLevels.affordable,
    duration: 15,
    isGlutenfree: false,
    isVegeterian: isVegetarian.noneVegetarian,
  ),
  Meals(
    id: 'S2',
    categoties: ['Z4', 'Z5', 'Z6', 'Z7'],
    title: 'ALOO GOSHT RECIPE',
    imageUrl:
        'https://cdn.tasteatlas.com/images/dishes/c5881e2f44b84dd999225186f1613e95.jpg?w=600&h=450',
    ingredients: [
      'Cilantro and chilies',
      'Spices',
      'Oil',
      'Salt',
      'Tomatoes',
      'Onions',
      'Meat',
    ],
    steps: [
        'First thing, when you start cooking is fry onions for 15 minutes on low heat with occasional stirring. Cover the pot and stir at regular intervals. Meanwhile, wash your meat and do other preps. The slow cooking of onion for about 15 minutes makes it very soft and more likely to dissolve into a thin smooth gravy.',
         'When onion are very soft, turn heat to medium and fry until light golden.'
         'Now, the visual sign is when the onion slices start to separate clearly, you stir constantly for few second until they are golden. Adjust heat as needed. You need medium golden color as shown in step 3. If you burn your few onions slices, it will spoil both color and taste of stew.'
'         Now, the visual sign is when the onion slices start to separate clearly, you stir constantly for few second until they are golden. Adjust heat as needed. You need medium golden color as shown in step 3. If you burn your few onions slices, it will spoil both color and taste of stew.'
'         Add ½ cup warm water. Mix and cover the lid tightly. Cook on medium heat until meat is tender. (30-45 minutes depending on meat and altitude) Add more warm water as needed. You can also use a pressure cooker to speed up the process.'
'       When meat is tender. We cook the stew on high heat for 10-15 minutes stirring frequently until oil separates on sides of pot. (Bhunnofying)'
'         Now, we\'ll add potatoes and water. Mix well, make sure potatoes are immersed in gravy. Cook for 10 minutes on medium heat with lid tightly covered until potatoes are fork tender.'
'         Aloo gosht is ready. Garnish with loads of chopped fresh green coriander leaves and slitted green chillies.  '

    ],
    compelexityLevels: CompelexityLevels.medium,
    accessiblityLevels: AccessibilityLevels.pricey,
    duration: 30,
    isGlutenfree: false,
    isVegeterian: isVegetarian.semiVegetarain,
  ),
  Meals(
      id: 'S3',
      categoties: ['Z1', 'Z3', 'Z5', 'Z7', 'Z9'],
      title: 'Mashroom Soup',
      imageUrl:
          'https://static.toiimg.com/thumb/59864099.cms?imgsize=980111&width=800&height=800',
      ingredients: [
        '''
        3 tablespoon butter
▢¾ can mushroom,, cut into pieces (reserve can water)
▢1 small onion,, chopped
▢2 tablespoon garlic,, chopped
For Soup
▢4 tablespoon butter
▢4 tablespoon plain flour
▢4 cups chicken stock,, homemade
▢2 cups milk
▢200 ml cream
▢1 tablespoon sugar
▢½ teaspoon freshly grounded black pepper
▢¼ teaspoon oregano powder,, optional
▢¼ can mushroom,, sliced
▢salt to taste
        '''
      ],
      steps: [
        '''
For Mushroom puree
In a pot add mushroom, onion, garlic and butter. Fry for 5 minute on medium flame.
Add mushroom can water. Transfer mixture to blender and blend it into a smooth puree.
For Soup
In the same pot fry flour in butter for 1 minute and pour chicken stock gradually breaking the lumps.
Next add milk, cream, salt, pepper, sugar, oregano and mushroom slices.
Simmer on low heat until thick.
Serve hot.
   '''
      ],
      compelexityLevels: CompelexityLevels.easy,
      accessiblityLevels: AccessibilityLevels.pricey,
      duration: 25,
      isGlutenfree: true,
      isVegeterian: isVegetarian.noneVegetarian),
  Meals(
      id: 'S4',
      categoties: ['Z10','Z1','Z9','Z8'],
      title: 'Italian_meatballs',
      imageUrl: 'https://www.pngitem.com/pimgs/m/36-369946_spaghetti-and-meatballs-png-transparent-png.png',
      ingredients: [
        '''
        INGREDIENTS
1 c. fresh bread crumbs
1/2 c. milk
1 lb. ground beef
1/2 lb. ground pork
1/2 lb. Italian sausage, casings removed
1 small onion, finely chopped
3 cloves garlic, minced
Kosher salt
Freshly ground black pepper
2 large eggs, beaten
1 c. freshly grated Parmesan
1/4 c. freshly chopped parsley
2 tbsp. extra-virgin olive oil
1 (32-oz.) jar marinara sauce, or homemade marinara
        '''
      ],
      steps: [
        '''
        DIRECTIONS
In a small bowl, stir bread crumbs with milk until evenly combined. Let sit 15 minutes, or while you prep other ingredients.
In a large bowl, use your hands to combine beef, pork, sausage, onion, and garlic. Season with salt and pepper, then gently stir in bread crumb mixture, eggs, Parmesan, and parsley until just combined. Form mixture into 1" balls.
In a large high-sided skillet over medium heat, heat oil. Working in batches, sear meatballs on all sides to develop a crust. Set meatballs aside, reduce heat to medium-low, and add sauce to skillet. Bring sauce to a simmer then immediately add meatballs back to skillet. Cover and simmer until cooked through, about 8 minutes more.
        '''
      ],
      compelexityLevels: CompelexityLevels.medium,
      accessiblityLevels: AccessibilityLevels.affordable,
      duration: 20,
      isGlutenfree: true,
      isVegeterian: isVegetarian.noneVegetarian)
];
