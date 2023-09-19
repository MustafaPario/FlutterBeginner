import 'package:flutter/material.dart';

class LowPriceCategory extends StatelessWidget {
  LowPriceCategory({super.key});

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Jerk Pork Burger",
      "price": "\$60",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1tNHV5-8J7sCuYQ0_wN5lGN35nnEdMYtBEA&usqp=CAU",
    },
    {
      "title": "Butter Burger",
      "price": "\$50",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyqfgYFjhApXLFBz3jKWUadNC8IaegEU_iLQ&usqp=CAU",
    },
    {
      "title": "Chicken Burger",
      "price": "\$75",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0QsQFkj0_wsxXk8WIo11_DqZ0YfFvy1mg6t2WbZMk6vonzTAncU7XdM4Q7km0MHjieYY&usqp=CAU",
    },
    {
      "title": "Steak Burger",
      "price": "\$99",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQW1eRUzHnl5ya_OjB6vjdBsuz680gkzb6RA&usqp=CAU",
    },
    {
      "title": "Smash Burger",
      "price": "\$60",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN9Sq0f0ED1BSfRvT_oFgmVtnyqNMiG5rWmw&usqp=CAU",
    },
    {
      "title": "Egg Burger",
      "price": "\$40",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThnp3q5ExLQ9PWHs3XIdE1VlQqegFvItyaSb0HO8EO98GrzPqOW_JDvq7FhC-J4-tMpbs&usqp=CAU",
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
            crossAxisSpacing: 50.0,
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
