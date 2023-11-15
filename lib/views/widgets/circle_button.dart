import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomCircleButton extends StatelessWidget {
  final Color borderColor;
  final IconData icon;

  final Color bgColor;
  final VoidCallback onTap;
  const CustomCircleButton(
      {super.key,
      required this.borderColor,
      required this.bgColor,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderColor, width: 3),
            color: bgColor),
        child: Padding(
          padding: EdgeInsets.all(h * 1),
          child: Icon(
            icon,
            color: borderColor,
          ),
        ),
      ),
    );
  }
}
