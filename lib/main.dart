// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onboard_screen_e7gezly/screens/firstscreen.dart';
import 'package:onboard_screen_e7gezly/screens/secondscreen.dart';
import 'package:onboard_screen_e7gezly/screens/thirdscreen.dart';
import 'package:onboard_screen_e7gezly/widgets/indicatorwid.dart';

void main(List<String> args) {
  runApp(Homescreen());
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index = 0;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  controller: _controller,
                  children: [firstscreen(), Secondscreen(), Thirdscreen()],
                ),
              ),
              Positioned(
                top: 600,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customindicatorwid(index == 0),
                    customindicatorwid(index == 1),
                    customindicatorwid(index == 2),
                  ],
                ),
              ),
              Positioned(
                bottom: 30,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xfff4a91c)),
                        height: 35,
                        width: 80,
                        child: InkWell(
                          child: Center(
                              child: Text(index == 2 ? "Register" : "Skip",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xfff4a91c)),
                      height: 35,
                      width: 80,
                      child: InkWell(
                        onTap: () {
                          _controller.animateToPage(index + 1,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.linear);
                        },
                        child: Center(
                            child: Text(index == 2 ? "Login" : "Next",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
