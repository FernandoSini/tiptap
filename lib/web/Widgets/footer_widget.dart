import 'package:flutter/material.dart';
import 'package:tiptap/web/Widgets/responsive.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        height: Responsive.isSmallScreen(context)
            ? screenSize.height * 0.35
            : screenSize.height * 0.3,
        color: Colors.black,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              margin: Responsive.isSmallScreen(context)
                  ? const EdgeInsets.only(left: 20, top: 50)
                  : const EdgeInsets.only(left: 250, right: 50),
              child: Column(
                children: const [],
              ),
            )
          ],
        ));
  }
}
