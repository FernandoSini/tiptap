// import 'package:flutter/material.dart';
// import 'package:fluttericon/font_awesome5_icons.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:loading_indicator/loading_indicator.dart';
// import 'package:tiptap/web/Widgets/app_bar_widget.dart';
// import 'package:tiptap/web/Widgets/custom_scroll_bar.dart';
// import 'package:tiptap/web/Widgets/floating_left_bar.dart';
// import 'package:tiptap/web/Widgets/responsive.dart';
// import 'package:tiptap/web/Widgets/topbar_widget.dart';
// import 'package:tiptap/web/services/Api/youtube_services.dart';
// import 'package:youtube_api/youtube_api.dart';
// import 'dart:html' as html;

// class WebVideosScreen extends StatefulWidget {
//   const WebVideosScreen({Key? key}) : super(key: key);

//   @override
//   _WebVideosScreenState createState() => _WebVideosScreenState();
// }

// class _WebVideosScreenState extends State<WebVideosScreen> {
//   Future getData() async {}
//   @override
//   Widget build(BuildContext context) {
//     final scrollController =
//         ScrollController(keepScrollOffset: true, initialScrollOffset: 0);
//     var screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: const PreferredSize(
//         preferredSize: Size.fromHeight(100),
//         child: AppBarWidget(),
//       ),
//       body: SizedBox(
//         child: FutureBuilder(
//           future: YoutubeServices().getChannelVideos(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return AnimatedSwitcher(
//                 // reverseDuration: const Duration(seconds: 3),
//                 transitionBuilder: AnimatedSwitcher.defaultTransitionBuilder,
//                 duration: const Duration(seconds: 10),
//                 switchInCurve: Curves.elasticIn,
//                 switchOutCurve: Curves.elasticOut,
//                 // switchInCurve: Curves.easeOut,
//                 child: Container(
//                   color: Colors.yellowAccent.shade700,
//                   height: screenSize.height,
//                   width: screenSize.width,
//                   child: const Align(
//                     alignment: Alignment.center,
//                     child: SizedBox(
//                       height: 150,
//                       child: LoadingIndicator(
//                         indicatorType: Indicator.ballRotateChase,
//                         colors: [Colors.black],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             } else if (snapshot.connectionState == ConnectionState.done) {
//               if (snapshot.hasError) {
//                 return Container(
//                   color: Colors.yellowAccent.shade700,
//                   height: MediaQuery.of(context).size.height,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text("has error ${snapshot.error.toString()}"),
//                   ),
//                 );
//               } else {
//                 if (snapshot.data == null) {
//                   return AnimatedSwitcher(
//                     // transitionBuilder: AnimatedSwi,
//                     duration: const Duration(seconds: 10),
//                     switchInCurve: Curves.elasticIn,
//                     switchOutCurve: Curves.elasticOut,
//                     child: CustomScrollBar(
//                       floatingLeftBar: const FloatingLeftBar(),
//                       scrollController: scrollController,
//                       widgetToScroll: Container(
//                           height: screenSize.height,
//                           width: screenSize.width,
//                           color: Colors.yellowAccent.shade700,
//                           child: SizedBox(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const SizedBox(
//                                   child: Icon(FontAwesome5.sad_cry,
//                                       color: Colors.black, size: 150),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.only(top: 20),
//                                   child: Align(
//                                     alignment: Alignment.center,
//                                     child: Text(
//                                       "Ainda não tem vídeo aqui",
//                                       softWrap: true,
//                                       textAlign: TextAlign.justify,
//                                       style: TextStyle(
//                                         fontFamily:
//                                             GoogleFonts.acme().fontFamily,
//                                         fontSize: 50,
//                                         color: Colors.black,
//                                         // fontWeight:FontWeight.bold
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )),
//                     ),
//                   );
//                 } else {
//                   List<YouTubeVideo> videos =
//                       snapshot.data as List<YouTubeVideo>;
//                   return AnimatedSwitcher(
//                     // transitionBuilder: AnimatedSwi,
//                     duration: const Duration(seconds: 10),
//                     switchInCurve: Curves.elasticIn,
//                     switchOutCurve: Curves.elasticOut,
//                     child: CustomScrollBar(
//                       floatingLeftBar: const FloatingLeftBar(),
//                       scrollController: scrollController,
//                       widgetToScroll: Container(
//                         height: screenSize.height * 0.95,
//                         width: screenSize.width,
//                         color: Colors.yellowAccent.shade700,
//                         child: ListView(
//                           physics: const BouncingScrollPhysics(),
//                           // controller: scrollController,
//                           shrinkWrap: true,
//                           children: [
//                             if (Responsive.isLargeScreen(context))
//                               Container(
//                                 // margin: const EdgeInsets.only(top: 20),
//                                 child: GridView.builder(
//                                   itemCount: videos.length,
//                                   shrinkWrap: true,
//                                   padding:
//                                       const EdgeInsets.only(left: 5, right: 5),
//                                   gridDelegate:
//                                       const SliverGridDelegateWithFixedCrossAxisCount(
//                                     childAspectRatio: 0.9,
//                                     crossAxisCount: 5,
//                                   ),
//                                   itemBuilder: (context, index) {
//                                     return Container(
//                                       // padding: const EdgeInsets.only(
//                                       //     left: 5, right: 5),
//                                       height: 600,
//                                       child: Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(17)),
//                                         child: Column(
//                                           children: [
//                                             Image.network(videos[index]
//                                                 .thumbnail
//                                                 .medium
//                                                 .url!),
//                                             const SizedBox(
//                                               height: 5,
//                                             ),
//                                             Container(
//                                               padding: const EdgeInsets.only(
//                                                 top: 10,
//                                                 left: 10,
//                                                 right: 10,
//                                               ),
//                                               child: Text(
//                                                 videos[index].title,
//                                                 softWrap: true,
//                                                 textAlign: TextAlign.center,
//                                                 style: const TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 13),
//                                               ),
//                                             ),
//                                             const SizedBox(height: 15),
//                                             SizedBox(
//                                               child: Text(
//                                                 "Transmitido dia: " +
//                                                     DateFormat("dd/MM/yyyy")
//                                                         .format(
//                                                       DateTime.tryParse(videos[
//                                                                   index]
//                                                               .publishedAt!)!
//                                                           .toLocal(),
//                                                     ),
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               height: 15,
//                                             ),
//                                             SizedBox(
//                                               height: screenSize.height * 0.05,
//                                               width: screenSize.width * 0.15,
//                                               child: ElevatedButton(
//                                                 child: Text(
//                                                   "Assita agora!",
//                                                   softWrap: true,
//                                                   textAlign: TextAlign.center,
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors
//                                                         .yellowAccent.shade700,
//                                                     fontSize: 15,
//                                                   ),
//                                                 ),
//                                                 style: ElevatedButton.styleFrom(
//                                                   primary: Colors.black,
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20),
//                                                   ),
//                                                 ),
//                                                 onPressed: () {
//                                                   html.window.open(
//                                                       videos[index].url,
//                                                       "podpah video");
//                                                 },
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),
//                               )
//                             else if (Responsive.isMediumScreen(context))
//                               Container(
//                                 // margin: const EdgeInsets.only(top: 20),
//                                 child: GridView.builder(
//                                   itemCount: videos.length,
//                                   shrinkWrap: true,
//                                   padding:
//                                       const EdgeInsets.only(left: 5, right: 5),
//                                   gridDelegate:
//                                       const SliverGridDelegateWithFixedCrossAxisCount(
//                                     childAspectRatio: 0.8,
//                                     crossAxisCount: 4,
//                                   ),
//                                   itemBuilder: (context, index) {
//                                     return Container(
//                                       // padding: const EdgeInsets.only(
//                                       //     left: 5, right: 5),
//                                       height: 600,
//                                       child: Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(17)),
//                                         child: Column(
//                                           children: [
//                                             Image.network(videos[index]
//                                                 .thumbnail
//                                                 .medium
//                                                 .url!),
//                                             const SizedBox(
//                                               height: 5,
//                                             ),
//                                             Container(
//                                               padding: const EdgeInsets.only(
//                                                 top: 10,
//                                                 left: 10,
//                                                 right: 10,
//                                               ),
//                                               child: Text(
//                                                 videos[index].title,
//                                                 softWrap: true,
//                                                 textAlign: TextAlign.center,
//                                                 style: const TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 13),
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               height: 5,
//                                             ),
//                                             SizedBox(
//                                               child: Text(
//                                                 "Transmitido dia: " +
//                                                     DateFormat("dd/MM/yyyy")
//                                                         .format(
//                                                       DateTime.tryParse(videos[
//                                                                   index]
//                                                               .publishedAt!)!
//                                                           .toLocal(),
//                                                     ),
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               height: 30,
//                                             ),
//                                             SizedBox(
//                                               height: screenSize.height * 0.05,
//                                               width: screenSize.width * 0.20,
//                                               child: ElevatedButton(
//                                                 child: Text(
//                                                   "Assita agora!",
//                                                   softWrap: true,
//                                                   textAlign: TextAlign.center,
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors
//                                                         .yellowAccent.shade700,
//                                                     fontSize: 15,
//                                                   ),
//                                                 ),
//                                                 style: ElevatedButton.styleFrom(
//                                                   primary: Colors.black,
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20),
//                                                   ),
//                                                 ),
//                                                 onPressed: () {
//                                                   html.window.open(
//                                                       videos[index].url,
//                                                       "podpah video");
//                                                 },
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),
//                               )
//                             else
//                               Container(
//                                 // margin: const EdgeInsets.only(top: 20),
//                                 child: GridView.builder(
//                                   itemCount: videos.length,
//                                   shrinkWrap: true,
//                                   padding:
//                                       const EdgeInsets.only(left: 5, right: 5),
//                                   gridDelegate:
//                                       const SliverGridDelegateWithFixedCrossAxisCount(
//                                     childAspectRatio: 0.8,
//                                     crossAxisCount: 2,
//                                   ),
//                                   itemBuilder: (context, index) {
//                                     return Container(
//                                       // padding: const EdgeInsets.only(
//                                       //     left: 5, right: 5),
//                                       height: 600,
//                                       child: Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(17)),
//                                         child: Column(
//                                           children: [
//                                             Image.network(videos[index]
//                                                 .thumbnail
//                                                 .medium
//                                                 .url!),
//                                             const SizedBox(
//                                               height: 5,
//                                             ),
//                                             Container(
//                                               padding: const EdgeInsets.only(
//                                                 top: 10,
//                                                 left: 10,
//                                                 right: 10,
//                                               ),
//                                               child: Text(
//                                                 videos[index].title,
//                                                 softWrap: true,
//                                                 textAlign: TextAlign.center,
//                                                 style: const TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 13),
//                                               ),
//                                             ),
//                                             const SizedBox(height: 15),
//                                             SizedBox(
//                                               child: Text(
//                                                 "Transmitido dia: " +
//                                                     DateFormat("dd/MM/yyyy")
//                                                         .format(
//                                                       DateTime.tryParse(videos[
//                                                                   index]
//                                                               .publishedAt!)!
//                                                           .toLocal(),
//                                                     ),
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               height: 15,
//                                             ),
//                                             SizedBox(
//                                               height: screenSize.height * 0.05,
//                                               width: screenSize.width * 0.3,
//                                               child: ElevatedButton(
//                                                 child: Text(
//                                                   "Assita agora!",
//                                                   softWrap: true,
//                                                   textAlign: TextAlign.center,
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors
//                                                         .yellowAccent.shade700,
//                                                     fontSize: 15,
//                                                   ),
//                                                 ),
//                                                 style: ElevatedButton.styleFrom(
//                                                   primary: Colors.black,
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20),
//                                                   ),
//                                                 ),
//                                                 onPressed: () {
//                                                   html.window.open(
//                                                       videos[index].url,
//                                                       "podpah video");
//                                                 },
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 }
//               }
//             } else {
//               return Container();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:tiptap/web/Widgets/app_bar_widget.dart';
import 'package:tiptap/web/Widgets/custom_scroll_bar.dart';
import 'package:tiptap/web/Widgets/floating_left_bar.dart';
import 'package:tiptap/web/Widgets/responsive.dart';
import 'package:tiptap/web/services/Api/youtube_services.dart';
import 'package:youtube_api/youtube_api.dart';
import 'dart:html' as html;

class WebVideosScreen extends StatefulWidget {
  const WebVideosScreen({Key? key}) : super(key: key);

  @override
  _WebVideosScreenState createState() => _WebVideosScreenState();
}

class _WebVideosScreenState extends State<WebVideosScreen> {
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarWidget(),
      ),
      body: SizedBox(
        child: FutureBuilder(
          future: YoutubeServices().getChannelVideos(),
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
                              "Erro! ${snapshot.error}",
                              softWrap: true,
                              textAlign: TextAlign.center,
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
                );
              } else {
                if (snapshot.data == null) {
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
                                    "Ainda não tem vídeo aqui",
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
                  List<YouTubeVideo> videos =
                      snapshot.data as List<YouTubeVideo>;
                  return CustomScrollBar(
                    floatingLeftBar: const FloatingLeftBar(),
                    scrollController: scrollController,
                    widgetToScroll: Container(
                      height: screenSize.height * 0.95,
                      width: screenSize.width,
                      color: Colors.yellowAccent.shade700,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        // controller: scrollController,
                        shrinkWrap: true,
                        children: [
                          if (Responsive.isLargeScreen(context))
                            Container(
                              // margin: const EdgeInsets.only(top: 20),
                              child: GridView.builder(
                                itemCount: videos.length,
                                shrinkWrap: true,
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.9,
                                  crossAxisCount: 5,
                                ),
                                itemBuilder: (context, index) {
                                  return Container(
                                    // padding: const EdgeInsets.only(
                                    //     left: 5, right: 5),
                                    height: 600,
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17)),
                                      child: Column(
                                        children: [
                                          Image.network(videos[index]
                                              .thumbnail
                                              .medium
                                              .url!),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 10,
                                              right: 10,
                                            ),
                                            child: Text(
                                              videos[index]
                                                  .title
                                                  .replaceAll("&amp;", "&"),
                                              softWrap: true,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          SizedBox(
                                            child: Text(
                                              "Transmitido dia: " +
                                                  DateFormat("dd/MM/yyyy")
                                                      .format(
                                                    DateTime.tryParse(
                                                            videos[index]
                                                                .publishedAt!)!
                                                        .toLocal(),
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.05,
                                            width: screenSize.width * 0.15,
                                            child: ElevatedButton(
                                              child: Text(
                                                "Assita agora!",
                                                softWrap: true,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors
                                                      .yellowAccent.shade700,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              onPressed: () {
                                                html.window.open(
                                                    videos[index].url,
                                                    "podpah video");
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          else if (Responsive.isMediumScreen(context))
                            Container(
                              // margin: const EdgeInsets.only(top: 20),
                              child: GridView.builder(
                                itemCount: videos.length,
                                shrinkWrap: true,
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.8,
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return Container(
                                    // padding: const EdgeInsets.only(
                                    //     left: 5, right: 5),
                                    height: 600,
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17)),
                                      child: Column(
                                        children: [
                                          Image.network(videos[index]
                                              .thumbnail
                                              .medium
                                              .url!),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 10,
                                              right: 10,
                                            ),
                                            child: Text(
                                              videos[index]
                                                  .title
                                                  .replaceAll("&amp;", "&"),
                                              softWrap: true,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "Transmitido dia: " +
                                                  DateFormat("dd/MM/yyyy")
                                                      .format(
                                                    DateTime.tryParse(
                                                            videos[index]
                                                                .publishedAt!)!
                                                        .toLocal(),
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.05,
                                            width: screenSize.width * 0.20,
                                            child: ElevatedButton(
                                              child: Text(
                                                "Assita agora!",
                                                softWrap: true,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors
                                                      .yellowAccent.shade700,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              onPressed: () {
                                                html.window.open(
                                                    videos[index].url,
                                                    "podpah video");
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          else
                            Container(
                              // margin: const EdgeInsets.only(top: 20),
                              child: GridView.builder(
                                itemCount: videos.length,
                                shrinkWrap: true,
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.8,
                                  crossAxisCount: 2,
                                ),
                                itemBuilder: (context, index) {
                                  return Container(
                                    // padding: const EdgeInsets.only(
                                    //     left: 5, right: 5),
                                    height: 600,
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17)),
                                      child: Column(
                                        children: [
                                          Image.network(videos[index]
                                              .thumbnail
                                              .medium
                                              .url!),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 10,
                                              right: 10,
                                            ),
                                            child: Text(
                                              videos[index]
                                                  .title
                                                  .replaceAll("&amp;", "&"),
                                              softWrap: true,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          SizedBox(
                                            child: Text(
                                              "Transmitido dia: " +
                                                  DateFormat("dd/MM/yyyy")
                                                      .format(
                                                    DateTime.tryParse(
                                                            videos[index]
                                                                .publishedAt!)!
                                                        .toLocal(),
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.05,
                                            width: screenSize.width * 0.3,
                                            child: ElevatedButton(
                                              child: Text(
                                                "Assita agora!",
                                                softWrap: true,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors
                                                      .yellowAccent.shade700,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              onPressed: () {
                                                html.window.open(
                                                    videos[index].url,
                                                    "podpah video");
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }
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
