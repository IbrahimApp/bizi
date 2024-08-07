import 'package:bizi/components/constants/constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function()? tapEven;

  const AppButton({
    super.key,
    required this.text,
    this.color = Colors.black54,
    this.textColor = Colors.white,
    this.tapEven,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEven,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(kDefaultPadding / 3),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
