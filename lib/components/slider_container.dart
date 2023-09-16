import 'package:flutter/material.dart';

class customSlider extends StatelessWidget {
  final String? image;
  const customSlider({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 25,
      ),
      width: 300,
      height: 120,
      decoration: BoxDecoration(
          color: const Color(0xFFF9B023),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            image ??
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf7FXUnytffhnzAwrriB_bea8xKrh2qMxyow&usqp=CAU",
            width: 120,
            height: 100,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Color(0xFFFAFBFD)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "50% OFF",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                    color: Color(0xFFFAFBFD)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'On first 03 orders',
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 13,
                    color: Color(0xFFFAFBFD)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
