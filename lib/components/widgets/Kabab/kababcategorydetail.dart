import 'package:flutter/material.dart';
import 'package:my_firstapp/components/food_tile.dart';
import 'package:my_firstapp/components/widgets/image_links.dart';
import 'package:my_firstapp/model/food.dart';
import 'package:my_firstapp/screens/fooddetailspage.dart';

class KababCategoryMenu extends StatefulWidget {
  const KababCategoryMenu({super.key});

  @override
  State<KababCategoryMenu> createState() => _KababCategoryMenuState();
}

class _KababCategoryMenuState extends State<KababCategoryMenu> {
  List foodMenu = [
    Food(
      name: "Turkish Kabab",
      price: "\$40",
      imagePath: imagesLinks.kabab1,
      rating: "4.2",
    ),
    Food(
      name: "Crazy Masala Kabab",
      price: "\$50",
      imagePath: imagesLinks.kabab2,
      rating: "4.6",
    ),
    Food(
      name: "Grilled Kabab",
      price: "\$99",
      imagePath: imagesLinks.kabab3,
      rating: "4.9",
    ),
    Food(
      name: "Indian Kabab",
      price: "\$70",
      imagePath: imagesLinks.kabab4,
      rating: "4.3",
    ),
    Food(
      name: "Pakistani Chabli Kabab",
      price: "\$120",
      imagePath: imagesLinks.kabab5,
      rating: "4.5",
    ),
    Food(
      name: "Irani Kabab",
      price: "\$90",
      imagePath: imagesLinks.kabab6,
      rating: "4.1",
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
