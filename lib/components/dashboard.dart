import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: const BoxDecoration(
        color: Color(0xFF2A4BA0),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hey, Mustafa",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFAFBFD),
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.cartShopping,
                  color: Color(0xFFFAFBFD),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 450,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  // color: Color(0xFF53075),
                  color: Colors.white),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 10,
                    ),
                    child: Icon(Icons.search),
                  ),
                  Text("Search Products or Store"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DELIVERY TO",
                    style: TextStyle(
                        color: Color(0xFFB2BBCE),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    "WITHIN",
                    style: TextStyle(
                        color: Color(0xFFB2BBCE),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )
                ],
              ),
            ),
            const Row(
              children: [
                Text(
                  "Green Way 3000, Sylhet ",
                  style: TextStyle(color: Color(0xFFFAFBFD)),
                ),
                FaIcon(FontAwesomeIcons.arrowDown,
                    size: 14, color: Color(0xFFFAFBFD)),
                Spacer(),
                Text(
                  "1 Hour ",
                  style: TextStyle(
                    color: Color(0xFFFAFBFD),
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.arrowDown,
                  size: 14,
                  color: Color(0xFFFAFBFD),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
