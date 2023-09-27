import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'src/app_ui/common/app_stack_view.dart';
// import 'util/router.dart' as router;
// import 'widget/box.dart';

void main() {
  // Init Platform

  // TODO: [COMMERCIALS] add ads and keyEvent

  // TODO: expect image/video cache problems
  runApp(
      const Launcher()
  );
}

class LauncherState extends State<Launcher> {


  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: const MediaQueryData(),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [

            ],
          ),
        )
    );
  }
}

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => LauncherState();
}
