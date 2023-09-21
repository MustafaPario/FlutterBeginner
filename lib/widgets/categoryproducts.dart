import 'package:flutter/material.dart';

class CategoryProductsWidget extends StatefulWidget {
  final String? image;
  final String? text;
  const CategoryProductsWidget({
    super.key,
    this.image,
    this.text,
  });

  @override
  State<CategoryProductsWidget> createState() => _CategoryProductsWidgetState();
}

class _CategoryProductsWidgetState extends State<CategoryProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, top: 30, left: 40, right: 30),
      width: 170,
      height: 220,
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
              widget.image ?? "assets/images/kabab.png",
              height: 110,
              width: 110,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            children: [
              Text(
                widget.text ?? "Burger's",
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Fast Food",
                style: TextStyle(color: Color.fromARGB(255, 86, 85, 85)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
