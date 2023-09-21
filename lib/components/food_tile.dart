import 'package:flutter/material.dart';
import 'package:my_firstapp/model/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTab;
  const FoodTile({super.key, required this.food, this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.only(bottom: 20, top: 20),
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 233, 239),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Image.network(
              food.imagePath,
              height: 120,
              width: 120,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              food.name,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  food.price,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(
                  food.rating,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
