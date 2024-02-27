import 'package:flutter/widgets.dart';
import 'package:my_cave/util/logger.dart';

StackViewObserver _stackViewObserver = StackViewObserver();
StackViewState get stackView => _stackViewObserver.navigator! as StackViewState;

class StackView extends Navigator {
  StackView({
    super.key,
    super.initialRoute,
    super.onGenerateRoute
  }) : super(
      observers: [_stackViewObserver]
  );

  @override
  NavigatorState createState() {
    return StackViewState();
  }
}

class StackViewState extends NavigatorState {
  String? get currentRouteName => _stackViewObserver.currentRoute?.settings.name;
  String get currentPath => _stackViewObserver.currentPath;
  final onRouteChanged = ChangeNotifier();
}

class StackViewObserver extends NavigatorObserver {
  final List<Route?> _routeStack = [];
  Route? get currentRoute => _routeStack.isNotEmpty ? _routeStack.last : null;
  String get currentPath => _stackViewObserver._routeStack.map((i) => i?.settings.name).join("/");

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.add(route);
    _onRouteChanged();
    logDebug(() => "StackViewState.didPush(). now:$currentPath ${route.settings}");
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.removeLast();
    _onRouteChanged();
    logDebug(() => "StackViewState.didPop(). now:$currentPath");
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.remove(route);
    _onRouteChanged();
    logDebug(() => "StackViewState.didRemove(). now:$currentPath");
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    final index = _routeStack.indexOf(oldRoute);
    if (index != -1) {
      _routeStack[index] = newRoute;
    }
    _onRouteChanged();
    logDebug(() => "StackViewState.didReplace(). now:$currentPath");
  }

  void _onRouteChanged() {
    (_stackViewObserver.navigator as StackViewState).onRouteChanged.notifyListeners();
  }
}