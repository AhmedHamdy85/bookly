import 'package:flutter/material.dart';

import '../../../../home/presintation/views/widget/Home screen wedgets/best_seller_lis_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BookListViweItem(),
      ),
    );
    ;
  }
}
