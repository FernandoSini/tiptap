import 'package:flutter/material.dart';

import 'Responsive.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({Key? key, this.opacity, this.color, this.radius})
      : super(key: key);
  final double? opacity;
  final Color? color;
  final double? radius;

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 3000),
      child: Container(
        // color: Colors.white.withOpacity(widget.opacity),
        decoration: widget.radius != null
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(widget.radius!),
                color: Colors.white.withOpacity(widget.opacity!),
              )
            : null,
        margin: widget.radius != null
            ? const EdgeInsets.only(top: 10, left: 20, right: 20)
            : null,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Wrap(
                  children: [
                    if (Responsive.isSmallScreen(context))
                      SizedBox(
                        width: screenSize.width * 0.02,
                      )
                    else if (Responsive.isMediumScreen(context))
                      SizedBox(
                        width: screenSize.width * 0.02,
                      )
                    else
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
