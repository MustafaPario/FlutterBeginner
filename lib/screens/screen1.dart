import 'package:flutter/material.dart';
import 'package:my_firstapp/screens/screen2.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFF2A4BA0),
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 20, top: 40, left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your holiday',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFAFBFD)),
                ),
                const SizedBox(height: 8),
                const Text(
                  'shopping',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFAFBFD)),
                ),
                const SizedBox(height: 8),
                const Text(
                  'delivered to Screen',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFAFBFD)),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        'one',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFAFBFD)),
                      ),
                    ),
                    Image.asset('assets/images/Emoji.png')
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    'There are something for everyone',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFB2BBCE)),
                  ),
                ),
                const Text(
                  'to enjoy with Sweet Shop',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB2BBCE)),
                ),
                const Text(
                  'Favourites Screen 1',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB2BBCE)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: 34,
                          height: 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 2,
                        decoration: BoxDecoration(
                            color: const Color(0xFFB2BBCE),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Center(
                    child: Image.asset(
                      "assets/images/delivery.png",
                      width: 130,
                      height: 130,
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (cpntext) => const ScreenTwo()));
                    },
                    child: Container(
                      width: 255,
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF8F9FB),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.white24,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 4)),
                          ]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
