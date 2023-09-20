import 'package:flutter/material.dart';

class BroastCategoryDetail extends StatefulWidget {
  const BroastCategoryDetail({super.key});

  @override
  State<BroastCategoryDetail> createState() => _BroastCategoryDetailState();
}

class _BroastCategoryDetailState extends State<BroastCategoryDetail> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Special Crispy Broast",
      "price": "\$199",
      "images":
          "data:image/jpeg;base64,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",
    },
    {
      "title": "Leg Broast",
      "price": "\$140",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3QPzTZuCIj5nMHZttfAdyFcbEzHVQ-rXCbA&usqp=CAU",
    },
    {
      "title": "Half Broast",
      "price": "\$89",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7vW2-kXX05rIY8CpFiMU0rBNvaaTIjvTyoQ&usqp=CAU",
    },
    {
      "title": "Albaik Broast",
      "price": "\$250",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdFyo3a0BiEOQOP2BOfvPDKJzNNF5keu9R9A&usqp=CAU",
    },
    {
      "title": "Olive Oil Broast",
      "price": "\$190",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGTo6X-kz3A498vHUceTrQ34D569g_Z23ZiQ&usqp=CAU",
    },
    {
      "title": "Lahori Broast",
      "price": "\$110",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVNmMidxyGc7Mjmn5Jo4M_Nkk7CKgYg2njhw&usqp=CAU",
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
