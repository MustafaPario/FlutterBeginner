import 'package:flutter/material.dart';
import 'package:my_firstapp/components/rowNav.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RowNavBar(),
        ],
      ),
    );
  }
}
