import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tiptap/web/Screens/Partners/web_partners_screen.dart';
import 'package:tiptap/web/Screens/Store/web_store_screen.dart';
import 'package:tiptap/web/Screens/Videos/web_videos_screen.dart';
import 'package:tiptap/web/provider/login_provider.dart';
import 'web/Screens/Home/web_home_screen.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  //configureApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(
          create: (context) => LoginProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TipTap',
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      // color: Colors.black,
      theme: ThemeData(
        primaryColor: Colors.black,
        scrollbarTheme: ScrollbarThemeData(
            isAlwaysShown: true,
            showTrackOnHover: true,
            thickness: MaterialStateProperty.all(10),
            thumbColor: MaterialStateProperty.all(Colors.white),
            interactive: true),
      ),
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
                case "/podpahs":
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (context, animation1, animation2) =>
                        const WebVideosScreen(),
                  );
                case "/store":
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (context, animation1, animation2) =>
                        const WebStoreScreen(),
                  );
                case "/partners":
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (context, animation1, animation2) =>
                        const WebPartnersScreen(),
                  );
                // case "/privacy":
                //   return PageRouteBuilder(
                //     settings: settings,
                //     pageBuilder: (context, animation1, animation2) => PrivacyScreen(),
                //   );
                default:
              }
            }
          : null,
      // home: kIsWeb ? const HomeScreen() : null,
    );
  }
}
