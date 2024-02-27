// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import '../styles/theme.dart';

// class ClickScope extends StatefulWidget {
//   ClickScope({
//     Key? key,
//     this.onClick,
//     this.child,
//     this.childBuilder
//   }) : super(key: key);

//   void Function()? onClick;
//   Widget? child;
//   /// For now, we use [Opacity] widget to implement opacity effect, but with greater Performance loss
//   /// Try use [childBuilder] and avoid using [Opacity], eg. use Color.withOpacity for colors
//   Widget Function(double opacity)? childBuilder;

//   @override
//   State<StatefulWidget> createState() => ClickScopeState();
// }

// class ClickScopeState extends State<ClickScope> {
//   bool _hovering = false;

//   void _flashPressed() {
//     setState(() {
//       _hovering = true;
//     });
//     SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
//       if (!mounted) return;
//       setState(() => _hovering = false);
//     });
//   }

//   @override
//   Widget build(BuildContext) {
//     assert(widget.child == null || widget.childBuilder == null);
//     final double opacity = _hovering ? Themes.pressedOpacity : Themes.normalOpacity;
//     late Widget child;
//     if (widget.childBuilder != null) {
//       child = widget.childBuilder!(opacity);
//     } else if (widget.child != null) {
//       child = Opacity(
//         opacity: opacity,
//         child: widget.child,
//       );
//     }

//     return GestureDetector(
//       behavior: HitTestBehavior.opaque,
//       onTapDown: (details) => setState(() {_hovering = true;}),
//       onTapUp: (details) => setState(() {_hovering = false;}),
//       onTapCancel: () => setState(() {_hovering = false;}),
//       onTap: () {
//         // When fast clicked, button would trigger tapDown/Up, instead it just does tap
//         _flashPressed();
//         if (widget.onClick != null) widget.onClick!();
//       },
//       child: child,
//     );
//   }
// }