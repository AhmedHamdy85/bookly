import 'package:bookly/core/utilty/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundcolor,
      required this.textColor,
      required this.borderRadius,
      required this.text,
      this.onPresd});
  final Color backGroundcolor;
  final Color textColor;
  final BorderRadius borderRadius;
  final String text;
  final void Function()? onPresd;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backGroundcolor,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          onPressed: onPresd,
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          )),
    );
  }
}
