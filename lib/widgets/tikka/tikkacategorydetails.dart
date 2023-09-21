import 'package:flutter/material.dart';
import 'package:my_firstapp/widgets/image_links.dart';

class TikkaCategoryMenu extends StatefulWidget {
  const TikkaCategoryMenu({super.key});

  @override
  State<TikkaCategoryMenu> createState() => _TikkaCategoryMenuState();
}

class _TikkaCategoryMenuState extends State<TikkaCategoryMenu> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Chicken Tikka",
      "price": "\$140",
      "images": imagesLinks.tikka1,
    },
    {
      "title": "Mutton Tikka",
      "price": "\$200",
      "images": imagesLinks.tikka2,
    },
    {
      "title": "Paneer Tikka",
      "price": "\$150",
      "images": imagesLinks.tikka3,
    },
    {
      "title": "Beef Tikka",
      "price": "\$190",
      "images": imagesLinks.tikka4,
    },
    {
      "title": "Tikka Boti",
      "price": "\$170",
      "images": imagesLinks.tikka5,
    },
    {
      "title": "Tandoori Chicken Tikka",
      "price": "\$180",
      "images": imagesLinks.tikka6,
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
