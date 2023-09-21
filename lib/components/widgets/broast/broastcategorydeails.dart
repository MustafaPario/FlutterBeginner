import 'package:flutter/material.dart';
import 'package:my_firstapp/components/food_tile.dart';
import 'package:my_firstapp/components/widgets/image_links.dart';
import 'package:my_firstapp/model/food.dart';
import 'package:my_firstapp/screens/fooddetailspage.dart';

class BroastCategoryScreen extends StatefulWidget {
  const BroastCategoryScreen({super.key});

  @override
  State<BroastCategoryScreen> createState() => _BroastCategoryScreenState();
}

class _BroastCategoryScreenState extends State<BroastCategoryScreen> {
  List foodMenu = [
    Food(
      name: "Special Crispy Broast",
      price: "\$199",
      imagePath: imagesLinks.broast1,
      rating: "4.9",
    ),
    Food(
      name: "Leg Broast",
      price: "\$140",
      imagePath: imagesLinks.broast2,
      rating: "4.6",
    ),
    Food(
      name: "Half Broast",
      price: "\$89",
      imagePath: imagesLinks.broast3,
      rating: "4.8",
    ),
    Food(
      name: "Albaik Broast",
      price: "\$250",
      imagePath: imagesLinks.broast4,
      rating: "4.9",
    ),
    Food(
      name: "Olive Oil  Broast",
      price: "\$190",
      imagePath: imagesLinks.broast5,
      rating: "4.5",
    ),
    Food(
      name: "Lahori Broast",
      price: "\$110",
      imagePath: imagesLinks.broast6,
      rating: "4.7",
    ),
  ];

  //navigration

  void navigatetofoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailPage(
          food: foodMenu[index],
        ),
      ),
    );
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
