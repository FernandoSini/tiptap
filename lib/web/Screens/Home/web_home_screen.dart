import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:tiptap/web/Widgets/custom_scroll_bar.dart';
import 'package:tiptap/web/Widgets/floating_left_bar.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  _WebHomeScreenState createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  String? data;
  final scrollController = ScrollController();
  Future<String?> getData() async {
    data = await "maconha das brabas";

    return data;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        return AnimatedSwitcher(
          // reverseDuration: const Duration(seconds: 3),
          duration: const Duration(seconds: 10),
          switchInCurve: Curves.elasticIn,
          switchOutCurve: Curves.elasticOut,
          // switchInCurve: Curves.easeOut,
          child: snapshot.connectionState == ConnectionState.waiting
              ? Container(
                  color: Colors.yellow,
                  height: screenSize.height,
                  width: screenSize.width,
                  child: const Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 150,
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballRotateChase,
                        colors: [Colors.black],
                      ),
                    ),
                  ),
                )
              : Scaffold(
                  body: snapshot.hasError
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Align(
                            alignment: Alignment.center,
                            child:
                                Text("has error ${snapshot.error.toString()}"),
                          ),
                        )
                      : CustomScrollBar(
                          floatingLeftBar: const FloatingLeftBar(),
                          scrollController: scrollController,
                          widgetToScroll: Container(
                            height: screenSize.height,
                            width: screenSize.width,
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              controller: scrollController,
                              child: snapshot.data == null
                                  ? const Align(
                                      alignment: Alignment.center,
                                      child: Text("is null"),
                                    )
                                  : Column(
                                      children: [
                                        SizedBox(
                                          height: screenSize.height * 0.5,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "has Data ${snapshot.data}"),
                                          ),
                                        ),
                                        Container(
                                          height: screenSize.height * 0.7,
                                          color: Colors.blue,
                                        )
                                      ],
                                    ),
                            ),
                          ),
                        ),
                ),
        );
      },
    );
  }
}
