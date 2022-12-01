import 'package:flutter/material.dart';
//customisable big text

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  TextOverflow overflow;
  double size;
  BigText({
    super.key,
    this.color = const Color.fromARGB(255, 0, 0, 0),
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w700),
    );
  }
}
