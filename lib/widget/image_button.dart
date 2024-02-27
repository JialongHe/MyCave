// import 'package:flutter/material.dart';
// import 'click_scope.dart';

// class ImageButton extends StatelessWidget {
//   ImageButton({
//     Key? key,
//     required this.url,
//     this.height,
//     this.width,
//     this.onClick
//   }) : super(key: key);

//   String url;
//   double? height;
//   double? width;
//   void Function()? onClick;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: support other source of Image
//     return ClickScope(
//       onClick: onClick,
//       child: Image(
//         image: AssetImage(url),
//         fit: BoxFit.fill,
//         height: width,
//         width: height,
//       ),
//     );
//   }
// }