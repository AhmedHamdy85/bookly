import 'package:flutter/cupertino.dart';

import 'best_seller_lis_view_item.dart';

class BestSellerListViwe extends StatelessWidget {
  const BestSellerListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BookListViweItem(),
      ),
    );
  }
}
