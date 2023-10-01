import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cave/components/bar.dart';
import 'package:my_cave/widget/click_scope.dart';
import 'package:my_cave/widget/image_button.dart';
import 'package:my_cave/widget/primary_button.dart';
import 'components/page_template.dart';

// TODO: add a "back to top" button, and showing state control
// temprary no login, but TODO: NOTE: style control
// TODO: probably some mode transfer control here, like a drawer

void main() {
  // Init Platform
  // TODO: [COMMERCIALS] add ads and keyEvent
  // TODO: expect and solve image/video cache problems

  runApp(const Launcher());
}

class LauncherState extends State<Launcher> {
  Size screenSize = Size.zero;

  @override
  Widget build(BuildContext context) {

    // TODO: Use mediaquery and do responsive layout, NOTE: would rebuild every time mediaQuery data changes
    // DO NOT USE MediaQuery.of, would rebuild much more
    // MediaQuery.sizeOf(context)
    // Using MediaQuery.sizeOf would cause view to rebuild whenever the size changes
    screenSize = MediaQuery.sizeOf(context);

    return MediaQuery(
        data: MediaQueryData(),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: PageTemplate(
            header: Bar(
              // height: 1/9 * screenSize.height,
              height: 100,
              // backgroundColor: Colors.red,
              border: Border.fromBorderSide(BorderSide(color: Colors.grey)),
              // Border(bottom: BorderSide(color: Colors.black)),
              children: [
                ImageButton(url: "assets/icons/menu-burger.png", width: 40, height: 40),
                ImageButton(url: "assets/icons/search.png", width: 40, height: 40),
                ImageButton(url: "assets/icons/cross.png", width: 40, height: 40),
              ],
            ),
            content: const Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Text("123"),
            ),
            bottom: Bar(
              height: 100,
              border: Border.fromBorderSide(BorderSide(color: Colors.grey)),
              children: [
                ImageButton(url: "assets/icons/home.png", width: 40, height: 40),
                ImageButton(url: "assets/icons/user.png", width: 40, height: 40),
                PrimaryButton(width: 40, height: 40, text: "Test")
                // ImageButton(url: "assets/icons/settings.png", width: 40, height: 40),
              ],
            ),
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
