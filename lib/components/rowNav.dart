import 'package:flutter/material.dart';
import 'package:my_firstapp/screens/category.dart';
import 'package:my_firstapp/screens/favourite.dart';
import 'package:my_firstapp/screens/home.dart';
import 'package:my_firstapp/screens/more.dart';

class RowNavBar extends StatefulWidget {
  const RowNavBar({super.key});

  @override
  State<RowNavBar> createState() => _RowNavBarState();
}

class _RowNavBarState extends State<RowNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          color: Color(0xFFF9B023),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: const Icon(
                Icons.home,
              ),
              iconSize: 27,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()));
              },
              icon: Icon(Icons.category),
              iconSize: 27,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavouriteScreen()));
              },
              icon: Icon(Icons.favorite_outline),
              iconSize: 27,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MoreScreen()));
              },
              icon: Icon(Icons.more_horiz),
              iconSize: 27,
            ),
          ],
        ),
      ),
    );
  }
}
