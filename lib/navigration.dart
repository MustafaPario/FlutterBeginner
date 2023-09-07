import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_firstapp/category.dart';
import 'package:my_firstapp/favourite.dart';
import 'package:my_firstapp/home.dart';
import 'package:my_firstapp/more.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final items = [
    Icon(
      Icons.home_outlined,
      size: 30,
      color: Color(0xFFE0B420),
    ),
    Icon(
      Icons.category_outlined,
      size: 30,
      color: Color(0xFFE0B420),
    ),
    Icon(
      Icons.favorite_outline,
      size: 30,
      color: Color(0xFFE0B420),
    ),
    Icon(
      Icons.more_horiz,
      size: 30,
      color: Color(0xFFE0B420),
    )
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: getSelectedWidget(index: index),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = HomeScreen();
        break;

      case 1:
        widget = CategoryScreen();
        break;

      case 2:
        widget = FavouriteScreen();
        break;

      case 3:
        widget = MoreScreen();
        break;
      default:
        widget = Container(); // Handle default case
    }
    return widget;
  }
}
