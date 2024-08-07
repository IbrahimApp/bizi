import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  const AppLargeText({
    Key? key,
    this.size = 30,
    required this.text,
    this.color = Colors.black54,
    this.textAlign = TextAlign.center,
    this.fontWeight = FontWeight.bold,
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
