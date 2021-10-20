import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:tiptap/web/Widgets/app_bar_widget.dart';
import 'package:tiptap/web/Widgets/custom_scroll_bar.dart';
import 'package:tiptap/web/Widgets/floating_left_bar.dart';
import 'package:tiptap/web/Widgets/responsive.dart';
import 'package:tiptap/web/Widgets/topbar_widget.dart';
import 'package:video_player/video_player.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  _WebHomeScreenState createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  bool? isLoading = false;
  String? datinha = "";
  Future<String?> getData() async {
    isLoading = true;
    setState(() {
      datinha = "maconha das brabas";
    });
    isLoading = false;
    return Future.delayed(const Duration(seconds: 5), () {
      return datinha;
    });
  }

  VideoPlayerController? controllerVideo;

  @override
  void initState() {
    super.initState();
    // controllerVideo = VideoPlayerController
    // .asset("AssetPath")
    //   ..initialize().then((_) {
    //     controllerVideo?.play();
    //     controllerVideo?.setLooping(true);
    //     setState(() {});
    //   });
  }

  @override
  Widget build(BuildContext context) {
    final scrollController =
        ScrollController(keepScrollOffset: true, initialScrollOffset: 0);
    var screenSize = MediaQuery.of(context).size;
    // return FutureBuilder(
    //   future: getData(),
    //   builder: (context, snapshot) {
    //     return AnimatedSwitcher(
    //       // reverseDuration: const Duration(seconds: 3),
    //       duration: const Duration(seconds: 10),
    //       switchInCurve: Curves.elasticIn,
    //       switchOutCurve: Curves.elasticOut,
    //       // switchInCurve: Curves.easeOut,
    //       child: snapshot.connectionState == ConnectionState.waiting
    //           ? Container(
    //               color: Colors.yellow,
    //               height: screenSize.height,
    //               width: screenSize.width,
    //               child: const Align(
    //                 alignment: Alignment.center,
    //                 child: SizedBox(
    //                   height: 150,
    //                   child: LoadingIndicator(
    //                     indicatorType: Indicator.ballRotateChase,
    //                     colors: [Colors.black],
    //                   ),
    //                 ),
    //               ),
    //             )
    //           : Scaffold(
    //               // appBar: PreferredSize(
    //               //   child: const TopBarWidget(
    //               //     opacity: 1,
    //               //     color: Colors.red,
    //               //     // backgroundColor: Colors.black,
    //               //     radius: 50,
    //               //   ),
    //               //   preferredSize: Size(screenSize.width, 1000),
    //               // ),
    //               appBar: const PreferredSize(
    //                   preferredSize: Size.fromHeight(80),
    //                   child: AppBarWidget()),
    //               extendBodyBehindAppBar: true,
    //               body: snapshot.hasError
    //                   ? SizedBox(
    //                       height: MediaQuery.of(context).size.height,
    //                       child: Align(
    //                         alignment: Alignment.center,
    //                         child:
    //                             Text("has error ${snapshot.error.toString()}"),
    //                       ),
    //                     )
    //                   : CustomScrollBar(
    //                       floatingLeftBar: const FloatingLeftBar(),
    //                       // scrollController: scrollController,
    //                       widgetToScroll: Container(
    //                         height: screenSize.height,
    //                         width: screenSize.width,
    //                         alignment: Alignment.center,
    //                         color: Colors.yellowAccent.shade700,
    //                         child: snapshot.data == null
    //                             ? const Align(
    //                                 alignment: Alignment.center,
    //                                 child: Text("is null"),
    //                               )
    //                             : ListView(
    //                                 physics: const BouncingScrollPhysics(),
    //                                 shrinkWrap: true,
    //                                 controller: scrollController,
    //                                 children: [
    //                                   SizedBox(
    //                                     height: screenSize.height * 0.5,
    //                                     child: Align(
    //                                       alignment: Alignment.center,
    //                                       child:
    //                                           Text("has Data ${snapshot.data}"),
    //                                     ),
    //                                   ),
    //                                   Container(
    //                                     height: screenSize.height * 0.7,
    //                                     color: Colors.yellowAccent.shade700,
    //                                   )
    //                                 ],
    //                               ),
    //                       ),
    //                     ),
    //             ),
    //     );
    //   },
    // );
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarWidget(),
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        child: FutureBuilder(
          future: getData(),
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
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "has error ${snapshot.error.toString()}",
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: GoogleFonts.acme().fontFamily,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                );
              } else {
                return AnimatedSwitcher(
                  duration: const Duration(seconds: 10),
                  switchInCurve: Curves.elasticIn,
                  switchOutCurve: Curves.elasticOut,
                  child: CustomScrollBar(
                    floatingLeftBar: const FloatingLeftBar(),
                    // scrollController: scrollController,
                    widgetToScroll: Container(
                      height: screenSize.height,
                      width: screenSize.width,
                      alignment: Alignment.center,
                      color: Colors.yellowAccent.shade700,
                      child: snapshot.data == null
                          ? const Align(
                              alignment: Alignment.center,
                              child: Text("is null"),
                            )
                          : ListView(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              controller: scrollController,
                              children: [
                                Container(
                                  height: screenSize.height * 0.87,
                                  width: screenSize.width,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "./assets/podcastmaiszikadainternet.jpeg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    SizedBox(
                                      height: screenSize.height * 0.85,
                                      width: screenSize.width * 0.5,
                                      child: Image.asset("./assets/podpah.png"),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * 0.85,
                                      width: screenSize.width * 0.45,
                                      child: Align(
                                        alignment: Alignment.center,
                                        // child: Text("has Data ${snapshot.data}"),
                                        child: DefaultTextStyle(
                                          style: TextStyle(
                                            fontSize: 30,
                                            // fontFamily: "Agne",
                                            // fontFamily: GoogleFonts.amethysta()
                                            //     .fontFamily,
                                            fontFamily:
                                                GoogleFonts.acme().fontFamily,
                                            color: Colors.white,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                          child: AnimatedTextKit(
                                            repeatForever: true,
                                            // isRepeatingAnimation: true,

                                            animatedTexts: [
                                              TypewriterAnimatedText(
                                                "O melhor podcast do Brasil está de cara nova...",
                                                speed: const Duration(
                                                  milliseconds: 70,
                                                ),
                                              ),
                                              TypewriterAnimatedText(
                                                "Aguarde...",
                                                speed: const Duration(
                                                  milliseconds: 70,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: screenSize.height * 0.4,
                                  width: screenSize.width,
                                  color: Colors.black,
                                  child: Wrap(
                                    // alignment: WrapAlignment.spaceEvenly,
                                    runAlignment: WrapAlignment.center,
                                    // direction: Axis.vertical,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            // color: Colors.red,
                                            // margin: EdgeInsets.only(
                                            //     left: Responsive.isSmallScreen(
                                            //             context)
                                            //         ? 50
                                            //         : 200),
                                            child: Text(
                                              "Sobre nós",
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.acme()
                                                    .fontFamily,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // width: screenSize.width * 0.5,
                                            padding: EdgeInsets.only(
                                                top: 20,
                                                left: Responsive.isSmallScreen(
                                                        context)
                                                    ? 50
                                                    : 200,
                                                right: Responsive.isSmallScreen(
                                                        context)
                                                    ? 50
                                                    : 200),
                                            child: const Text(
                                              "maconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconhamaconha",
                                              softWrap: true,
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
