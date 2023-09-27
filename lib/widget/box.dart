import 'package:flutter/material.dart';

// TODO: see if we need a universal Container with some functions

// class Box extends StatefulWidget {
//   Box({Key? key, required this.child}) : super(key: key);
//
//   final Widget child;
//
//   @override
//   State<StatefulWidget> createState() {
//     return BoxState();
//   }
// }
//
// class BoxState extends State<Box> {
//   bool volumeDrawerOpen = false;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MediaQuery(
//       data: const MediaQueryData(),
//       child: Directionality(
//           textDirection: TextDirection.ltr,
//           child: ScrollConfiguration(
//             // Don't expect default scrollbars, instead we will do customized a one.
//             behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
//             child: DefaultTextStyle(
//               style: const TextStyle(
//                   // TODO: not sure add Customizd fond family
//                   fontFamily: "NotoSansSC-Regular",
//                   // Now more probably it will go fallback
//                   fontFamilyFallback: ["Arial"]
//               ),
//               child: QuickOperationGestureDetector(
//                 child: Container(
//                   child: Stack(
//                     children: [
//                       widget.child,
//                       VolumeDrawer(
//                           open: volumeDrawerOpen,
//                           onClose: () {
//                             setState(() {
//                               volumeDrawerOpen = false;
//                             });
//                           }),
//                     ],
//                   ),
//                   width: ,
//                   height: ,
//                   color: const Color(0xff000000),
//                 ),
//               ),
//             ),
//           )),
//     );
//   }
// }

