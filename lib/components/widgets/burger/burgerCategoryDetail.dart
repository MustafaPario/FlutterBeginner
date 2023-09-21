import 'package:flutter/material.dart';
import 'package:my_firstapp/components/food_tile.dart';
import 'package:my_firstapp/components/widgets/image_links.dart';
import 'package:my_firstapp/model/food.dart';
import 'package:my_firstapp/screens/fooddetailspage.dart';

class BurgerCategoryMenu extends StatefulWidget {
  const BurgerCategoryMenu({super.key});

  @override
  State<BurgerCategoryMenu> createState() => _BurgerCategoryMenuState();
}

class _BurgerCategoryMenuState extends State<BurgerCategoryMenu> {
  List foodMenu = [
    Food(
      name: "JAG Burger",
      price: "\$110",
      imagePath: imagesLinks.burger1,
      rating: "4.9",
    ),
    Food(
      name: "Veggie Burger",
      price: "\$130",
      imagePath: imagesLinks.burger2,
      rating: "4.6",
    ),
    Food(
      name: "Grilled Burger",
      price: "\$114",
      imagePath: imagesLinks.burger3,
      rating: "4.8",
    ),
    Food(
      name: "Steak Burger",
      price: "\$99",
      imagePath: imagesLinks.burger4,
      rating: "4.9",
    ),
    Food(
      name: "Smash Burger",
      price: "\$100",
      imagePath: imagesLinks.burger5,
      rating: "4.5",
    ),
    Food(
      name: "Turkish Burger",
      price: "\$170",
      imagePath: imagesLinks.burger6,
      rating: "4.7",
    ),
  ];

  void navigatetofoodDetails(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FoodDetailPage(
                  food: foodMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: foodMenu.length,
      itemBuilder: (context, index) => FoodTile(
        food: foodMenu[index],
        onTab: () => navigatetofoodDetails(index),
      ),
    ));
  }
}
