import 'package:flutter/material.dart';
import 'package:my_firstapp/components/food_tile.dart';
import 'package:my_firstapp/components/widgets/image_links.dart';
import 'package:my_firstapp/model/food.dart';
import 'package:my_firstapp/screens/fooddetailspage.dart';

class TikkaCategoryScreen extends StatefulWidget {
  const TikkaCategoryScreen({super.key});

  @override
  State<TikkaCategoryScreen> createState() => _TikkaCategoryScreenstate();
}

class _TikkaCategoryScreenstate extends State<TikkaCategoryScreen> {
  List foodMenu = [
    Food(
      name: "Chicken Tikka",
      price: "\$140",
      imagePath: imagesLinks.tikka1,
      rating: "4.9",
    ),
    Food(
      name: "Mutton Tikka",
      price: "\$200",
      imagePath: imagesLinks.tikka2,
      rating: "4.6",
    ),
    Food(
      name: "Paneer Tikka",
      price: "\$150",
      imagePath: imagesLinks.tikka3,
      rating: "4.8",
    ),
    Food(
      name: "Beef Tikka",
      price: "\$190",
      imagePath: imagesLinks.tikka4,
      rating: "4.9",
    ),
    Food(
      name: "Tikka Boti",
      price: "\$170",
      imagePath: imagesLinks.tikka5,
      rating: "4.5",
    ),
    Food(
      name: "Tandoori Chicken Tikka",
      price: "\$180",
      imagePath: imagesLinks.tikka6,
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
