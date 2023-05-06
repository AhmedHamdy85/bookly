import 'package:bookly/core/utilty/assits.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, top: 70, right: 16),
      child: Row(
        children: [
          Image.asset(
            AssitsData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 30,
              ))
        ],
      ),
    );
  }
}
