import 'package:flutter/material.dart';

/*
  The basic page: a page primarily consists of three parts as below:
  1.header: with top margin of 0
  2.content: the contents shown in the middle
  3.bottom: with bottom margin of 0
  Because basic page is construct with Stack, header&bottom will cover contents,
  So be careful when you're defining boxSize.
 */
class PageTemplate extends StatefulWidget {
  PageTemplate({
    Key? key,
    this.header,
    this.content,
    this.bottom
  }) : super(key:key);

  Widget? header; // placed at top
  Widget? content;
  Widget? bottom; // placed at bottom

  @override
  State<StatefulWidget> createState() {
    return PageTemplateState();
  }
}

class PageTemplateState extends State<PageTemplate> {
  @override
  Widget build(BuildContext context) {

    return Stack(
      // TODO: deside if use default, fastest but with visual effect concerns
      clipBehavior: Clip.hardEdge,
      children: [

        // TODO: Loading State / leisure State

        if (widget.content != null) widget.content!,
        if (widget.bottom != null) Positioned(bottom: 0, left: 0, right: 0, child: widget.bottom!),
        if (widget.header != null) Positioned(top: 0, left:0, right: 0, child: widget.header!)
      ],
    );
  }
}