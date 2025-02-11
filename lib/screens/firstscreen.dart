// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100726),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(child: Image.asset("assets/Untitled design.png")),
            SizedBox(
              height: 20,
            ),
            Text(
              textAlign: TextAlign.center,
              "Reserve your favorite field or gaming lounge in just a few taps",
              style: TextStyle(color: Color(0xfff4a91c), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
// !  with fast & secure online payments