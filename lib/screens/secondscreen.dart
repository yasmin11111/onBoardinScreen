// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100726),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset("assets/Cash Payment-bro.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              textAlign: TextAlign.center,
              "secure and Fast online payments",
              style: TextStyle(color: Color(0xfff4a91c), fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
