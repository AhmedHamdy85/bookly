import 'package:flutter/material.dart';

import '../Home screen wedgets/custm_list_item.dart';

class SimilarBooksListViwe extends StatelessWidget {
  const SimilarBooksListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 5),
            child: CustomItem(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}