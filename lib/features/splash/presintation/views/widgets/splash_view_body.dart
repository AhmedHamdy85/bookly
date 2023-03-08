import 'package:bookly/core/utilty/assits.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashViweBody extends StatelessWidget {
  const SplashViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssitsData.logo),
        const Text(
          'Reed Free Books',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
