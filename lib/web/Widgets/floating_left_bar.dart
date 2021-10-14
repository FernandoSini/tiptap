import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class FloatingLeftBar extends StatefulWidget {
  const FloatingLeftBar({Key? key}) : super(key: key);

  @override
  _FloatingLeftBarState createState() => _FloatingLeftBarState();
}

class _FloatingLeftBarState extends State<FloatingLeftBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: const Icon(
              FontAwesome.instagram,
              size: 25,
            ),
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 50,
            width: 50,
            child: const Icon(
              FontAwesome.twitter,
              size: 25,
            ),
            decoration: const BoxDecoration(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
