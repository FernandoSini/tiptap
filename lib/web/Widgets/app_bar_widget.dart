import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:tiptap/web/Widgets/register_dialog.dart';
import 'package:tiptap/web/Widgets/responsive.dart';

import 'login_dialog.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List<bool> onHoverList = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        // margin: Responsive.isSmallScreen(context)
        //     ? null
        //     : const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          // shape: Responsive.isSmallScreen(context)
          //     ? null
          //     : RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(40),
          //       ),
          toolbarHeight: 500,
          leading: InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/home");
            },
            onHover: (value) {
              setState(() {
                onHoverList[0] = value;
              });
            },
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 10,
                left: 20,
              ),
              alignment: Alignment.center,

              // child: Text(
              //   "Logo",
              //   style: TextStyle(
              //     fontSize: 20,
              //     color: !onHoverList[0]
              //         ? Colors.white
              //         : Colors.yellowAccent.shade700,
              //   ),
              // ),
              child: Image.asset(
                "./assets/podpah.png",
              ),
            ),
          ),
          leadingWidth: 150,
          centerTitle: true,
          title: Responsive.isSmallScreen(context)
              ? null
              : Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            onHoverList[1] = value;
                          });
                        },
                        onTap: () {},
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Sobre nós",
                            style: TextStyle(
                                color: !onHoverList[1]
                                    ? Colors.white
                                    : Colors.yellowAccent.shade700),
                          ),
                        ),
                      ),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            onHoverList[2] = value;
                          });
                        },
                        onTap: () {},
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Loja",
                            style: TextStyle(
                                color: !onHoverList[2]
                                    ? Colors.white
                                    : Colors.yellowAccent.shade700),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed("/podpahs");
                        },
                        onHover: (value) {
                          setState(() {
                            onHoverList[3] = value;
                          });
                        },
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          margin: EdgeInsets.only(
                              right:
                                  Responsive.isSmallScreen(context) ? 20 : 40),
                          child: Text(
                            "Podpahs",
                            style: TextStyle(
                              color: !onHoverList[3]
                                  ? Colors.white
                                  : Colors.yellowAccent.shade700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          actions: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (builder) {
                          return const RegisterDialog();
                        },
                      );
                    },
                    onHover: (value) {
                      setState(() {
                        onHoverList[4] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, right: 20),
                      child: Row(
                        children: [
                          Text(
                            "Registrar",
                            style: TextStyle(
                                fontSize: 20,
                                color: !onHoverList[4]
                                    ? Colors.white
                                    : Colors.yellowAccent.shade700),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesome.pencil,
                            size: 20,
                            color: !onHoverList[4]
                                ? Colors.white
                                : Colors.yellowAccent.shade700,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.yellowAccent.shade700,
                      thickness: 2.5,
                      indent: 10,
                      endIndent: 0,
                      width: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (builder) {
                          return const LoginDialog();
                        },
                      );
                    },
                    onHover: (value) {
                      setState(() {
                        onHoverList[5] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 20, top: 10, right: 30),
                      child: Row(
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                color: !onHoverList[5]
                                    ? Colors.white
                                    : Colors.yellowAccent.shade700),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesome.login,
                            color: !onHoverList[5]
                                ? Colors.white
                                : Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
