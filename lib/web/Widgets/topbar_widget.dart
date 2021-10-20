import 'package:flutter/material.dart';

import 'Responsive.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget(
      {Key? key, this.opacity, this.color, this.radius, this.backgroundColor})
      : super(key: key);
  final double? opacity;
  final Color? color;
  final double? radius;
  final Color? backgroundColor;

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        height: 100,
        // color: Colors.white.withOpacity(widget.opacity),
        decoration: widget.radius != null
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(widget.radius!),
                color: widget.backgroundColor != null
                    ? widget.backgroundColor?.withOpacity(widget.opacity!)
                    : Colors.white.withOpacity(widget.opacity!),
              )
            : BoxDecoration(
                // borderRadius: BorderRadius.circular(widget.radius!),
                color: widget.backgroundColor != null
                    ? widget.backgroundColor?.withOpacity(widget.opacity!)
                    : Colors.white.withOpacity(widget.opacity!),
              ),
        margin: (widget.radius != null && widget.radius != 0)
            ? const EdgeInsets.only(top: 10, left: 20, right: 20)
            : null,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  child: Wrap(
                    children: [
                      if (Responsive.isSmallScreen(context))
                        SizedBox(
                          width: screenSize.width * 0.02,
                        )
                      else if (Responsive.isMediumScreen(context))
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("conona"),
                            ),
                            Row(
                              children: [
                                Container(
                                  // alignment: Alignment.center,
                                  child: Text("braba"),
                                ),
                                Container(
                                  // alignment: Alignment.center,
                                  child: Text("braba"),
                                ),
                                Container(
                                  // alignment: Alignment.center,
                                  child: Text("braba"),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: const Text("conona"),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: const Text("conona"),
                            ),
                          ],
                        )
                      else
                        Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          runSpacing: 50,
                          spacing: 100,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 50),
                              child: Text(
                                "maconha",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(
                              "maconha2",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "maconha3",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "maconha4",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "maconha5",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 100),
                              child: Text(
                                "maconha6",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
