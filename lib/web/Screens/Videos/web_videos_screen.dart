import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:tiptap/web/Widgets/app_bar_widget.dart';
import 'package:tiptap/web/Widgets/custom_scroll_bar.dart';
import 'package:tiptap/web/Widgets/floating_left_bar.dart';
import 'package:tiptap/web/Widgets/topbar_widget.dart';

class WebVideosScreen extends StatefulWidget {
  const WebVideosScreen({Key? key}) : super(key: key);

  @override
  _WebVideosScreenState createState() => _WebVideosScreenState();
}

class _WebVideosScreenState extends State<WebVideosScreen> {
  Future getVideos() async {}
  @override
  Widget build(BuildContext context) {
    final scrollController =
        ScrollController(keepScrollOffset: true, initialScrollOffset: 0);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarWidget(),
      ),
      body: SizedBox(
        child: FutureBuilder(
          future: getVideos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return AnimatedSwitcher(
                // reverseDuration: const Duration(seconds: 3),
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
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("has error ${snapshot.error.toString()}"),
                  ),
                );
              } else {
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
                      child: snapshot.data == null
                          ? SizedBox(
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
                                        "Ainda não tem vídeo aqui",
                                        softWrap: true,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.acme().fontFamily,
                                          fontSize: 50,
                                          color: Colors.black,
                                          // fontWeight:FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : ListView(
                              physics: const BouncingScrollPhysics(),
                              controller: scrollController,
                              shrinkWrap: true,
                              children: [
                                  SizedBox(
                                    child: GridView.builder(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 5),
                                      itemBuilder: (context, index) {
                                        return const Card();
                                      },
                                    ),
                                  ),
                                ]),
                    ),
                  ),
                );
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
