import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_firstapp/widgets/textbutton.dart';

class SandwichScreen extends StatefulWidget {
  const SandwichScreen({super.key});

  @override
  State<SandwichScreen> createState() => _SandwichScreenState();
}

class _SandwichScreenState extends State<SandwichScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Sandwich Menu",
            ),
            actions: const [
              Icon(Icons.search),
              SizedBox(
                width: 30,
              ),
              Center(
                child: FaIcon(
                  FontAwesomeIcons.cartShopping,
                ),
              ),
              SizedBox(
                width: 20,
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text_Button(
                      Buttontitle: 'Popular',
                    ),
                    Text_Button(
                      Buttontitle: 'Low Price',
                    ),
                    Text_Button(
                      Buttontitle: 'Deals',
                    ),
                    Text_Button(
                      Buttontitle: 'Special',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
