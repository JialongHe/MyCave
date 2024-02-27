import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cave/common/stack_view.dart';
import 'package:my_cave/util/logger.dart';
import 'package:my_cave/util/router.dart' as router;

void main() {
  runApp(const Launcher());
}

class LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();

    // TODO: Initialize volume plugin here
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: const MediaQueryData(),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
            child: DefaultTextStyle(
              style: const TextStyle(
                  fontFamily: "NotoSansSC-Regular",
                  fontFamilyFallback: ["Arial"]
                ),
                child: Container(
                  child: Stack(
                    children: [
                      StackView(
                        initialRoute: "home",
                        onGenerateRoute: (RouteSettings settings) {
                          logInfo('onGenerateRoute: $settings');
                          
                          final contentBuilder = router.routeConfig[settings.name];
                          if (contentBuilder == null) throw Exception('Invalid route: ${settings.name}');
                          return router.CustomRouterBuilder<void>(builder: contentBuilder, settings: settings);
                        },
                      ),
                      // VolumePlugin
                    ],
                  ),
                  // width:
                  // height:
                  // color: TODO: Night mode?
                ),
              ),
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
