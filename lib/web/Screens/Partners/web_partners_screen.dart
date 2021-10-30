import 'package:flutter/material.dart';
import 'package:tiptap/web/Widgets/Responsive.dart';
import 'package:tiptap/web/Widgets/app_bar_widget.dart';

class WebPartnersScreen extends StatefulWidget {
  const WebPartnersScreen({Key? key}) : super(key: key);

  @override
  _WebPartnersScreenState createState() => _WebPartnersScreenState();
}

class _WebPartnersScreenState extends State<WebPartnersScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarWidget(),
      ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.yellowAccent.shade700,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   margin: const EdgeInsets.only(top: 20, bottom: 20),
              //   child: const Text(
              //     "Nossos Produtos",
              //     softWrap: true,
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              //   ),
              // ),
              if (Responsive.isSmallScreen(context))
                GridView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: screenSize.width,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("./assets/igaoemitico.jpeg"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            child: Text(
                              "productnameasdsada",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    );
                  },
                )
              else if (Responsive.isMediumScreen(context))
                GridView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: screenSize.width,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("./assets/igaoemitico.jpeg"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            child: Text(
                              "productnameasdsada",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    );
                  },
                )
              else
                GridView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (Responsive.isMediumScreen(context) ||
                            Responsive.isSmallScreen(context))
                        ? 0.5
                        : 0.95,
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: screenSize.width,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("./assets/igaoemitico.jpeg"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            child: Text(
                              "productnameasdsada",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
