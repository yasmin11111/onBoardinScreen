// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Thirdscreen extends StatelessWidget {
  const Thirdscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100726),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset("assets/Gift-rafiki.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              textAlign: TextAlign.center,
              "Participate in competitions Earn and track your points,Unlock special rewards",
              style: TextStyle(color: Color(0xfff4a91c), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
