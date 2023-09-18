import 'package:flutter/material.dart';
import 'package:my_firstapp/components/categoryDashbord.dart';
import 'package:my_firstapp/components/categoryProduct.dart';
import 'package:my_firstapp/components/rowNav.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardTwo(),

            //add caregory items
            CategoryItems(),

            //end items widget
            RowNavBar(),
          ],
        ),
      ),
    );
  }
}
