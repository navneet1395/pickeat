import 'package:flutter/material.dart';
//customisable big text

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  TextOverflow overflow;
  double size;
  double height;
  SmallText({
    super.key,
    this.color = const Color(0xffd3d3d3),
    required this.text,
    this.size = 12,
    this.height = 1.2,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(color: color, fontSize: size, height: height),
    );
  }
}
