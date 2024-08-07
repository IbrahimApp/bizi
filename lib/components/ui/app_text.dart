import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  const AppText({
    Key? key,
    this.size = 20,
    required this.text,
    this.color = Colors.black54,
    this.textAlign = TextAlign.center,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
