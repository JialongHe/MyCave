import 'package:flutter/material.dart';

/*
  A bar widget.
  It arranges its children horizontally and evenly.

  Temporarily: MainAxisAlignment.spaceAround:
  Place the free space evenly between the children as well as
  half of that space before and after the first and last child.

  TODO: consider borderradius and more customized shades.
 */
class Bar extends StatefulWidget {
  Bar({
    Key? key,
    required this.height,
    this.children = const <Widget>[],
    this.backgroundColor = Colors.transparent,
    this.radius = BorderRadius.zero,
    this.border
  }) : super(key: key);

  double height;
  List<Widget> children;
  Color backgroundColor;
  BorderRadius radius;
  BoxBorder? border;

  @override
  State<StatefulWidget> createState() => BarState();
}

class BarState extends State<Bar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
          borderRadius: widget.radius,
          border: widget.border,
          color: widget.backgroundColor
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.children,
      ),
    );
  }
}