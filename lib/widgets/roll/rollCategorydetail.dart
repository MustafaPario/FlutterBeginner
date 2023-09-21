import 'package:flutter/material.dart';
import 'package:my_firstapp/widgets/image_links.dart';

class RollCategoryMenu extends StatefulWidget {
  const RollCategoryMenu({super.key});

  @override
  State<RollCategoryMenu> createState() => _RollCategoryMenuState();
}

class _RollCategoryMenuState extends State<RollCategoryMenu> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Mutton Roll",
      "price": "\$80",
      "images": imagesLinks.roll1,
    },
    {
      "title": "Veg Spring Roll",
      "price": "\$50",
      "images": imagesLinks.roll2,
    },
    {
      "title": "Kati Roll",
      "price": "\$50",
      "images": imagesLinks.roll3,
    },
    {
      "title": "Srilankan Roll",
      "price": "\$60",
      "images": imagesLinks.roll4,
    },
    {
      "title": "Chana Kathi Roll",
      "price": "\$30",
      "images": imagesLinks.roll5,
    },
    {
      "title": "Chicken Sausage Roll",
      "price": "\$40",
      "images": imagesLinks.roll6,
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
            crossAxisCount: 2,
            crossAxisSpacing: 70.0,
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
    ;
  }
}
