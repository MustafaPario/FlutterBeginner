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
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        margin: EdgeInsets.only(right: 30, bottom: 20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 233, 239),
          borderRadius: BorderRadius.circular(24.0),
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
              height: 5,
            ),
            Image.network(
                picture ??
                    "https://images.unsplash.com/flagged/photo-1587302164675-820fe61bbd55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGVtb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                width: 100,
                height: 100),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "Burger",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(
                  height: 4,
                ),
                const Text('Fast Food'),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 30),
              width: 140,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFFFFFFF),
              ),
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 30)),
                  const Text("Unit: "),
                  Text(
                    price ?? "\$: 100",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 13,
                    backgroundImage: AssetImage("assets/images/plus.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
