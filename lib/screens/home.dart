import 'package:flutter/material.dart';
import 'package:my_firstapp/components/dashboard.dart';
import 'package:my_firstapp/components/product_container.dart';
import 'package:my_firstapp/components/rowNav.dart';
import 'package:my_firstapp/components/slider_container.dart';
import 'package:my_firstapp/widgets/image_links.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Dashboard(),
          // Section prot

          Padding(
            padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customSlider(image: imagesLinks.deal1),
                  customSlider(image: imagesLinks.image2),
                  customSlider(image: imagesLinks.deal3),
                ],
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Recommended',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductContainer(
                      title: "Zinger Burger",
                      price: "\$: 99.6",
                      picture: imagesLinks.image1,
                    ),
                    ProductContainer(
                      title: "Chicken Broast",
                      price: "\$: 160",
                      picture: imagesLinks.image2,
                    ),
                    ProductContainer(
                      title: "Chicken Roll",
                      price: "\$: 50",
                      picture: imagesLinks.image3,
                    ),
                    ProductContainer(
                      title: "Beef Burger",
                      price: "\$: 100.7",
                      picture: imagesLinks.image4,
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),

          Expanded(child: RowNavBar()),
        ],
      ),
    );
  }
}
