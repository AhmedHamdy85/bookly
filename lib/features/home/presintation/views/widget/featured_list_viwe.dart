import 'package:flutter/material.dart';

import 'custm_list_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CustomItem(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
