// A drawer with unlimited length
// Add ContrainedBox and constraints, otherwise the drawer would adopt the screen width

import 'package:flutter/material.dart';


// class _QuickOperationController extends ValueNotifier<> {
//   double get positionY => value.positionY;
//   double get duration => value.duration;
//   bool get dragedDown => value.dragedown;

//   set positionY() {

//   }

//   set duration() {

//   }

//   set dragedDown() {

//   }
// }



class QuickOperationDrawer extends StatefulWidget {
  static bool showing = false;

  @override
  initState() {
    //
  }

  State<QuickOperationDrawer> createState() => QuickOperationDrawerState();
}

class QuickOperationDrawerState extends State<QuickOperationDrawer> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}