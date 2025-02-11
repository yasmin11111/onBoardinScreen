import 'package:flutter/material.dart';

class customindicatorwid extends StatelessWidget {
  bool active;
  customindicatorwid(this.active);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AnimatedContainer(
        width: active ? 30 : 10,
        height: 10,
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: active ? Color(0xfff4a91c) : Colors.grey),
      ),
    );
  }
}
