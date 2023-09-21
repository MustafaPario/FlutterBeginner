import 'package:flutter/material.dart';
import 'package:my_firstapp/components/food_tile.dart';
import 'package:my_firstapp/components/widgets/image_links.dart';
import 'package:my_firstapp/model/food.dart';
import 'package:my_firstapp/screens/fooddetailspage.dart';

class RollCategoryScreen extends StatefulWidget {
  const RollCategoryScreen({super.key});

  @override
  State<RollCategoryScreen> createState() => _RollCategoryScreenstate();
}

class _RollCategoryScreenstate extends State<RollCategoryScreen> {
  List foodMenu = [
    Food(
      name: "Mutton Roll",
      price: "\$80",
      imagePath: imagesLinks.roll1,
      rating: "4.9",
    ),
    Food(
      name: "Veg Spring Roll",
      price: "\$50",
      imagePath: imagesLinks.roll2,
      rating: "4.6",
    ),
    Food(
      name: "Kati Roll",
      price: "\$50",
      imagePath: imagesLinks.roll3,
      rating: "4.8",
    ),
    Food(
      name: "Kati Roll",
      price: "\$60",
      imagePath: imagesLinks.roll4,
      rating: "4.9",
    ),
    Food(
      name: "Chana Kathi Roll",
      price: "\$30",
      imagePath: imagesLinks.roll5,
      rating: "4.5",
    ),
    Food(
      name: "Chicken Sausage Roll",
      price: "\$40",
      imagePath: imagesLinks.roll6,
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
