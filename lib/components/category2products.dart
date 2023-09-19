import 'package:flutter/material.dart';
import 'package:my_firstapp/screens/CategoryItemsScreen/burger.dart';

class ItemsCategory extends StatefulWidget {
  const ItemsCategory({super.key});

  @override
  State<ItemsCategory> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<ItemsCategory> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Burger's",
      "subtitle": "Fast Food",
      "images": "assets/images/zinger.png",
    },
    {
      "title": "Kabab's",
      "subtitle": "Fast Food",
      "images": "assets/images/kabab.png",
    },
    {
      "title": "Sandwiche's",
      "subtitle": "Fast Food",
      "images": "assets/images/sandwich.png",
    },
    {
      "title": "Broast",
      "subtitle": "Fast Food",
      "images": "assets/images/chicken1.png",
    },
    {
      "title": "Tikka",
      "subtitle": "Fast Food",
      "images": "assets/images/Tikka.png",
    },
    {
      "title": "Roll",
      "subtitle": "Fast Food",
      "images": "assets/images/roll.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 24, top: 24, right: 50, left: 50),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 60.0,
            mainAxisSpacing: 20.0,
            mainAxisExtent: 200,
          ),
          itemCount: gridMap.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BurgerScreen()));
              },
              child: Container(
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
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      child: Image.network(
                        "${gridMap.elementAt(index)['images']}",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          "${gridMap.elementAt(index)['title']}",
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "${gridMap.elementAt(index)['subtitle']}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 86, 85, 85)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
            ;
          },
        ),
      ),
    );
  }
}
