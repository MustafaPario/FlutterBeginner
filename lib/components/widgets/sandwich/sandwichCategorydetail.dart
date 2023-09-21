import 'package:flutter/material.dart';
import 'package:my_firstapp/components/food_tile.dart';
import 'package:my_firstapp/components/widgets/image_links.dart';
import 'package:my_firstapp/model/food.dart';
import 'package:my_firstapp/screens/fooddetailspage.dart';

class SandwichCategoryMenu extends StatefulWidget {
  const SandwichCategoryMenu({super.key});

  @override
  State<SandwichCategoryMenu> createState() => _SandwichCategoryMenuState();
}

class _SandwichCategoryMenuState extends State<SandwichCategoryMenu> {
  List foodMenu = [
    Food(
      name: "Swasthi's Sandwich",
      price: "\$140",
      imagePath: imagesLinks.sandwich1,
      rating: "4.5",
    ),
    Food(
      name: "Egg Sandwich",
      price: "\$70",
      imagePath: imagesLinks.sandwich2,
      rating: "4.6",
    ),
    Food(
      name: "Ham Sandwich",
      price: "\$114",
      imagePath: imagesLinks.sandwich3,
      rating: "4.8",
    ),
    Food(
      name: "Green Goddess  Sandwich",
      price: "\$99",
      imagePath: imagesLinks.sandwich4,
      rating: "4.9",
    ),
    Food(
      name: "Creamy veg Sandwich",
      price: "\$80",
      imagePath: imagesLinks.sandwich5,
      rating: "4.5",
    ),
    Food(
      name: "Tuna Fish Sandwich",
      price: "\$190",
      imagePath: imagesLinks.sandwich6,
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
