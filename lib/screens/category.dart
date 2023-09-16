import 'package:flutter/material.dart';
import 'package:my_firstapp/components/categoryDashbord.dart';
import 'package:my_firstapp/components/category_product.dart';
import 'package:my_firstapp/components/rowNav.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardTwo(),

            //add caregory items
            Expanded(
              flex: 2,
              child: Container(
                  child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CategoryProducts();
                },
                itemCount: 10,
              )),
            ),
            RowNavBar(),
          ],
        ),
      ),
    );
  }
}
