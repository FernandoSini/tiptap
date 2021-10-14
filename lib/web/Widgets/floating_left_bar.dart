import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class FloatingLeftBar extends StatefulWidget {
  const FloatingLeftBar({Key? key}) : super(key: key);

  @override
  _FloatingLeftBarState createState() => _FloatingLeftBarState();
}

class _FloatingLeftBarState extends State<FloatingLeftBar> {
  bool hoverData = false;
  bool hoverData2 = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onHover: (value) {
              setState(() {
                hoverData = value;
              });
            },
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: hoverData2 ? 20 : 0),
              height: 60,
              width: hoverData ? 80 : 60,
              child: const Icon(
                FontAwesome.instagram,
                size: 25,
              ),
              decoration: const BoxDecoration(color: Colors.red),
            ),
          ),
          InkWell(
            onHover: (value) {
              setState(() {
                hoverData2 = value;
              });
            },
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: 2, left: hoverData ? 20 : 0),
              height: 60,
              width: hoverData2 ? 80 : 60,
              child: const Icon(
                FontAwesome.twitter,
                size: 25,
              ),
              decoration: const BoxDecoration(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
