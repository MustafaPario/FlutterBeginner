import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardTwo extends StatelessWidget {
  const DashboardTwo({super.key});

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
      child: const Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hey, Mustafa",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFAFBFD),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 22,
                  color: Color(0xFFFAFBFD),
                ),
                SizedBox(
                  width: 50,
                ),
                FaIcon(
                  FontAwesomeIcons.cartShopping,
                  color: Color(0xFFFAFBFD),
                ),
                SizedBox(
                  height: 55,
                )
              ],
            ),
            Text(
              "Shop",
              style: TextStyle(
                color: Color(0xFFFAFBFD),
                fontSize: 35,
              ),
            ),
            Text(
              "By Category",
              style: TextStyle(
                  color: Color(0xFFFAFBFD),
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
