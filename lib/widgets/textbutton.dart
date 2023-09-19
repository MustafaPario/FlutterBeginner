import 'package:flutter/material.dart';

class Text_Button extends StatefulWidget {
  final String? Buttontitle;

  Text_Button({super.key, this.Buttontitle});

  @override
  State<Text_Button> createState() => _Text_ButtonState();
}

class _Text_ButtonState extends State<Text_Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 120,
        height: 35,
        margin: EdgeInsets.only(top: 24, bottom: 24, right: 24),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 181, 179, 179),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            widget.Buttontitle ?? "hello",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
