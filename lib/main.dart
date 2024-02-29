import 'package:flutter/widgets.dart';
import 'package:my_cave/common/stack_view.dart';
import 'package:my_cave/util/logger.dart';
import 'package:my_cave/widget/image_button.dart';
import 'package:my_cave/util/router.dart' as router;
import 'dart:ui' as ui;
import 'package:tuple/tuple.dart';
import 'package:my_cave/styles/theme.dart';

void main() {
  runApp(const Launcher());
}

class LauncherState extends State<Launcher> {
  List<Tuple3<String, String, String>> panels = [
    const Tuple3("Home", "icons/home.png", "icons/home_fill.png"),
    const Tuple3("Search", "icons/search.png", "icons/search_fill.png"),
    const Tuple3("Library", "icons/library.png", "icons/library_fill.png"),
    const Tuple3("User", "icons/user.png", "icons/user_fill.png"),
  ];

  int activatedIndex = 0;

  @override
  void initState() {
    super.initState();

    // TODO: Initialize volume plugin here
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
        child: DefaultTextStyle(
          style: const TextStyle(
              fontFamily: "NotoSansSC-Regular",
              fontFamilyFallback: ["Arial"]
            ),
            child: ColoredBox(
              color: Themes.backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: screenSize.width,
                        height: 60,
                        child: Container(
                          child: const Text(
                              "Header",
                              style: TextStyle(
                                color: Themes.textColor
                              )
                            ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: const Text(
                              "test", 
                              style: TextStyle(
                                color: Themes.textColor
                              )
                            ),
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: 60,
                        margin: EdgeInsets.fromLTRB(18, 12, 18, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 0; i < panels.length; i++)
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageButton(
                                    width: 30,
                                    height: 30,
                                    image: i == activatedIndex ? AssetImage(panels[i].item3) : AssetImage(panels[i].item2),
                                    fit: BoxFit.fill,
                                    onPressed: () {
                                      // Navigator.pushNamed(context, pages[i].item2, arguments: pages[i].item3);
                                      setState(() {
                                        activatedIndex = i;
                                      });
                                    },
                                  ),
                                  Text(
                                    panels[i].item1,
                                    style: TextStyle(
                                      color: i == activatedIndex ? Themes.textColor : Themes.opaqueTextColor
                                    )
                                  )
                                ]
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  // Stack(
                  // children: [
                  // StackView(
                  //     initialRoute: "home",
                  //     onGenerateRoute: (RouteSettings settings) {
                  //       logInfo('onGenerateRoute: $settings');

                  //       final contentBuilder = router.routeConfig[settings.name];
                  //       if (contentBuilder == null) throw Exception('Invalid route: ${settings.name}');
                  //       return router.CustomRouterBuilder<void>(builder: contentBuilder, settings: settings);
                  //     },
                  //   ),
                ],
              ),
            )
          ),
        ),
      );
  }
}

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => LauncherState();
}
