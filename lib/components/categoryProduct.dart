import 'package:flutter/material.dart';
import 'package:my_firstapp/screens/CategoryItemsScreen/broast.dart';
import 'package:my_firstapp/screens/CategoryItemsScreen/burger.dart';
import 'package:my_firstapp/screens/CategoryItemsScreen/kabab.dart';
import 'package:my_firstapp/screens/CategoryItemsScreen/roll.dart';
import 'package:my_firstapp/screens/CategoryItemsScreen/sandwich.dart';
import 'package:my_firstapp/screens/CategoryItemsScreen/tikka.dart';
import 'package:my_firstapp/widgets/categoryproducts.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({super.key});

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BurgerScreen()));
                  });
                },
                child: const CategoryProductsWidget(
                  image: "assets/images/zinger.png",
                  text: "Burger's",
                ),
              ),
              // SizedBox(
              //   width: 100,
              // ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => KababScreen()));
                  });
                },
                child: const CategoryProductsWidget(
                  image: "assets/images/kabab.png",
                  text: "Kabab's",
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SandwichScreen()));
                  });
                },
                child: const CategoryProductsWidget(
                  image: "assets/images/sandwich.png",
                  text: "Sandwiche's",
                ),
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BroastScreen()));
                  });
                },
                child: const CategoryProductsWidget(
                  image: "assets/images/chicken1.png",
                  text: "Broast",
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TikkaScreen()));
                  });
                },
                child: const CategoryProductsWidget(
                  image: "assets/images/Tikka.png",
                  text: "Tikka",
                ),
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RollScreen()));
                  });
                },
                child: const CategoryProductsWidget(
                  image: "assets/images/roll.png",
                  text: "Roll",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
