import 'package:flutter/material.dart';
import 'package:pickeat/utils/small_text.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;

  final Color iconColor;
  const IconText(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
