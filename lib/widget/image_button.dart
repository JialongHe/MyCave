import 'package:flutter/widgets.dart';

class ImageButton extends StatefulWidget {
  ImageButton({
    super.key,
    required this.onPressed,
    required this.image,
    required this.width,
    required this.height,
    this.fit,
  });

  final ImageProvider image;
  final VoidCallback onPressed;
  double? width;
  double? height;
  BoxFit? fit;

  @override
  State<StatefulWidget> createState() {
    return ImageButtonState();
  }
}

class ImageButtonState extends State<ImageButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(microseconds: 500),
        width: hovered ? widget.width! * 0.9 : widget.width,
        height: hovered ? widget.height! * 0.9 : widget.height,
        child: Image(
          image: widget.image,
          // width: widget.width,
          // height: widget.height,
          fit: widget.fit,
          colorBlendMode: BlendMode.srcOver,
          color: hovered ? const Color(0x60000000) : const Color(0x00000000),
          
        ),
      ),
      onTapDown: (details) {
        setState(() {
          hovered = true;
        });
      },
      onTapCancel: () {
        setState(() {
          hovered = false;
        });
      },
      onTapUp: (details) {
        setState(() {
          hovered = false;
        });
      },
      onTap: () {
        setState(() {
          hovered = false;
        });
        widget.onPressed();
      },
    );
  }
}