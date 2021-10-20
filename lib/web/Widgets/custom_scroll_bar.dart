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
    return Stack(
      children: [
        widget.widgetToScroll!,
        Container(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: widget.floatingLeftBar,
          ),
        ),
      ],
    );
    /* return Scrollbar(
      // interactive: true,
      isAlwaysShown: true, thickness: 20, interactive: true,
      controller: widget.scrollController,
      showTrackOnHover: true, hoverThickness: 5,

      radius: const Radius.circular(20),
      child: Stack(
        children: [
          widget.widgetToScroll!,
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: widget.floatingLeftBar,
            ),
          ),
        ],
      ),
    ); */
  }
}
