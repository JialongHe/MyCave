import 'package:flutter/material.dart';
import 'package:my_cave/widget/click_scope.dart';
import '../styles/theme.dart';

class PrimaryButton extends StatefulWidget {
  PrimaryButton({
    Key? key,
    this.onClick,
    required this.width,
    required this.height,
    required this.text,
    this.child,
    this.textStyle
  }) : super(key: key);

  void Function()? onClick;
  late double width;
  late double height;
  String text;
  Widget? child;
  TextStyle? textStyle;

  State<PrimaryButton> createState() => PrimaryButtonState();
}

class PrimaryButtonState extends State<PrimaryButton> {

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(
      color:  Themes.textColor,
      fontSize: 18,
      overflow: TextOverflow.ellipsis
    );
    TextStyle mergedStyle = defaultStyle.merge(widget.textStyle);

    return ClickScope(
      onClick: widget.onClick,
      child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: widget.width, minHeight: widget.height),
          child: DecoratedBox(
            decoration: const BoxDecoration(
                color: Themes.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.text, style: mergedStyle, textAlign: TextAlign.center, maxLines: 1)
                ],
            ),
          ),
      ),
    );
  }
}