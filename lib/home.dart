import 'package:flutter/material.dart';
import 'package:my_firstapp/navigration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Home Screeen"));
  }
}
