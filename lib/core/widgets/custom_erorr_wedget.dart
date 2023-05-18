import 'package:bookly/core/utilty/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomErorrWidget extends StatelessWidget {
  const CustomErorrWidget({super.key, required this.erorrMessage});
  final String erorrMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      erorrMessage,
      style: Styles.textStyle18,
    );
  }
}
