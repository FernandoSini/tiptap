import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:tiptap/web/Widgets/app_bar_widget.dart';
import 'package:tiptap/web/Widgets/custom_scroll_bar.dart';
import 'package:tiptap/web/Widgets/floating_left_bar.dart';

class WebStoreScreen extends StatefulWidget {
  const WebStoreScreen({Key? key}) : super(key: key);

  @override
  _WebStoreScreenState createState() => _WebStoreScreenState();
}

class _WebStoreScreenState extends State<WebStoreScreen> {
  final ScrollController scrollController = ScrollController();
  Future getStoreItems() async {}
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          child: AppBarWidget(), preferredSize: Size.fromHeight(100)),
      body: SizedBox(
        child: FutureBuilder(
          future: getStoreItems(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return AnimatedSwitcher(
                // reverseDuration: const Duration(seconds: 3),
                transitionBuilder: AnimatedSwitcher.defaultTransitionBuilder,
                duration: const Duration(seconds: 10),
                switchInCurve: Curves.elasticIn,
                switchOutCurve: Curves.elasticOut,
                // switchInCurve: Curves.easeOut,
                child: Container(
                  color: Colors.yellowAccent.shade700,
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
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Container(
                  color: Colors.yellowAccent.shade700,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        child: Icon(Icons.sentiment_very_dissatisfied_outlined,
                            color: Colors.black, size: 150),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Desculpe, um erro aconteceu!",
                            softWrap: true,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: GoogleFonts.acme().fontFamily,
                              fontSize: 50,
                              color: Colors.black,
                              // fontWeight:FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else if (!snapshot.hasData || snapshot.data == null) {
                return AnimatedSwitcher(
                  // transitionBuilder: AnimatedSwi,
                  duration: const Duration(seconds: 10),
                  switchInCurve: Curves.elasticIn,
                  switchOutCurve: Curves.elasticOut,
                  child: CustomScrollBar(
                    floatingLeftBar: const FloatingLeftBar(),
                    scrollController: scrollController,
                    widgetToScroll: Container(
                      height: screenSize.height,
                      width: screenSize.width,
                      color: Colors.yellowAccent.shade700,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              child: Icon(FontAwesome5.sad_cry,
                                  color: Colors.black, size: 150),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Não temos nada na nossa loja ainda!",
                                  softWrap: true,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.acme().fontFamily,
                                    fontSize: 50,
                                    color: Colors.black,
                                    // fontWeight:FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
