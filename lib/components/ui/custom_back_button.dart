import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    required this.tapEven,
    required this.whiteColor,
  }) : super(key: key);

  final GestureTapCallback tapEven;
  final bool whiteColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: whiteColor ? Colors.white : Colors.black,
      ),
      onPressed: tapEven,
    );
  }
}
