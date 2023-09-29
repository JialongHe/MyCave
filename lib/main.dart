import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cave/components/bar.dart';
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
                Image(
                  image: AssetImage("assets/icons/menu-burger.png"),
                  fit: BoxFit.fill,
                  height: 40,
                  width: 40,
                ),
                Image(
                  image: AssetImage("assets/icons/search.png"),
                  fit: BoxFit.fill,
                  height: 40,
                  width: 40,
                ),
                Image(
                  image: AssetImage("assets/icons/cross.png"),
                  fit: BoxFit.fill,
                  height: 40,
                  width: 40,
                ),
              ],
            ),
            content: Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Text("123"),
            ),
            bottom: Bar(
              height: 100,
              border: Border.fromBorderSide(BorderSide(color: Colors.grey)),
              children: const [
                Image(
                  image: AssetImage("assets/icons/home.png"),
                  fit: BoxFit.fill,
                  height: 40,
                  width: 40,
                ),
                Image(
                  image: AssetImage("assets/icons/user.png"),
                  fit: BoxFit.fill,
                  height: 40,
                  width: 40,
                ),
                Image(
                  image: AssetImage("assets/icons/settings.png"),
                  fit: BoxFit.fill,
                  height: 40,
                  width: 40,
                ),

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
