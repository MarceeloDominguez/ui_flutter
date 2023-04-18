import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool isIcon;

  AppButton({
    super.key,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    this.text,
    this.icon,
    required this.isIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: Text(
              text!,
              style: TextStyle(
                color: color,
              ),
            ))
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
