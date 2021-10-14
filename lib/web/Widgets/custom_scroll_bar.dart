import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomScrollBar extends StatefulWidget {
  CustomScrollBar(
      {Key? key,
      this.floatingLeftBar,
      this.widgetToScroll,
      this.scrollController})
      : super(key: key);
  Widget? floatingLeftBar;
  Widget? widgetToScroll;
  ScrollController? scrollController;

  @override
  _CustomScrollBarState createState() => _CustomScrollBarState();
}

class _CustomScrollBarState extends State<CustomScrollBar> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      interactive: true,
      child: Stack(
        children: [
          widget.widgetToScroll!,
          Align(
            alignment: Alignment.centerRight,
            child: widget.floatingLeftBar,
          ),
        ],
      ),
    );
  }
}
