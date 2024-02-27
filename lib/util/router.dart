import 'package:flutter/widgets.dart';
import 'package:my_cave/pages/launcher/launcher_page.dart';

class CustomRouterBuilder<T> extends PageRoute<T> {
  CustomRouterBuilder({
    required this.builder,
    super.settings,
  }) : super(fullscreenDialog: false);

  final Widget Function(BuildContext context, RouteSettings? settings) builder;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  // TODO: Decide if we need page transition
  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => builder(context, settings);

  // TODO: Decide whether matain State
  @override
  bool get maintainState => false;

  @override
  Duration get transitionDuration => const Duration(microseconds: 0);
}

final Map<String, Widget Function(BuildContext context, RouteSettings? settings)> routeConfig = {
  // home
  "home": (BuildContext context, RouteSettings? settings) => const LauncherPage(),

  // setting
};
