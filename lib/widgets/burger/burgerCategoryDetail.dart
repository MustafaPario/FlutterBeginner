import 'package:flutter/material.dart';
import 'package:my_firstapp/widgets/image_links.dart';

class BurgerCategoryMenu extends StatelessWidget {
  BurgerCategoryMenu({super.key});

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "JAG Burger",
      "price": "\$110",
      "images": imagesLinks.burger1,
    },
    {
      "title": "Veggie Burger",
      "price": "\$130",
      "images": imagesLinks.burger2,
    },
    {
      "title": "Grilled Burger",
      "price": "\$114",
      "images": imagesLinks.burger3,
    },
    {
      "title": "Steak Burger",
      "price": "\$99",
      "images": imagesLinks.burger4,
    },
    {
      "title": "Smash Burger",
      "price": "\$100",
      "images": imagesLinks.burger5,
    },
    {
      "title": "Turkish Burger",
      "price": "\$170",
      "images": imagesLinks.burger6,
    },
    {
      "title": "JAG Burger",
      "price": "\$110",
      "images": imagesLinks.burger1,
    },
    {
      "title": "Veggie Burger",
      "price": "\$130",
      "images": imagesLinks.burger2,
    },
    {
      "title": "Grilled Burger",
      "price": "\$114",
      "images": imagesLinks.burger3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24, top: 24),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0,
            mainAxisExtent: 220,
          ),
          itemCount: gridMap.length,
          itemBuilder: (context, index) {
            return Container(
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
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    child: Image.network(
                      "${gridMap.elementAt(index)['images']}",
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: Image.asset("assets/images/plus.png"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['price']}",
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${gridMap.elementAt(index)['title']}",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 86, 85, 85)),
                      ),
                    ],
                  )
                ],
              ),
            );
            ;
          },
        ),
      ),
    );
  }
}
