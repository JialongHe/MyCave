import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage() : super(key: const PageStorageKey("LauncherKey"));

  @override
  State<StatefulWidget> createState() {
    return LauncherPageState();
  }
}

class LauncherPageState extends State<LauncherPage> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("whatever"),
      ],
    );
  }
}