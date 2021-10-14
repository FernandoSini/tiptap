import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'web/Screens/Home/web_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TipTap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: "/home",
      onGenerateRoute: kIsWeb
          ? (settings) {
              switch (settings.name) {
                case "/home":
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (context, animation1, animation2) =>
                        const WebHomeScreen(),
                  );
                // case "/aboutus":
                //   return PageRouteBuilder(
                //     settings: settings,
                //     pageBuilder: (context, animation1, animation2) => AboutUsScreen(),
                //   );
                // case "/help":
                //   return PageRouteBuilder(
                //     settings: settings,
                //     pageBuilder: (context, animation1, animation2) => HelpScreen(),
                //   );
                // case "/privacy":
                //   return PageRouteBuilder(
                //     settings: settings,
                //     pageBuilder: (context, animation1, animation2) => PrivacyScreen(),
                //   );

              }
            }
          : null,
      // home: kIsWeb ? const HomeScreen() : null,
    );
  }
}
