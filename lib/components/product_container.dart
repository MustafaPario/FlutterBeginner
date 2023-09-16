import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? price;
  const ProductContainer(
      {super.key,
      required this.title,
      required this.price,
      required this.picture});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 15),
      width: 160,
      height: 200,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 233, 239),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Image.network(
              picture ??
                  "https://images.unsplash.com/flagged/photo-1587302164675-820fe61bbd55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGVtb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
              width: 90,
              height: 90),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "Lemon",
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const Text('Organic'),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
          Container(
            width: 150,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFFFFFF),
            ),
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30)),
                const Text("Unit "),
                Text(
                  price ?? "\$: 100",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage("assets/images/plus.png"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
