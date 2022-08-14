import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {Key? key,
      required this.icon,
      required this.text,
      this.iconSize = 30,
      this.textSize = 18})
      : super(key: key);
  final IconData icon;
  final String text;
  final double iconSize;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: iconSize,
        ),
        Text(
          text,
          style: TextStyle(fontSize: textSize),
        )
      ],
    );
  }
}
