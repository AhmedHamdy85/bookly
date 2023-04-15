import 'package:bookly/core/utilty/assits.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../constuns.dart';
import '../../../../../core/utilty/styles.dart';
import 'custm_list_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_viwe.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          ItemListView(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViweItem(),
        ],
      ),
    );
  }
}

class BestSellerListViweItem extends StatelessWidget {
  const BestSellerListViweItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AssitsData.testItem,
          width: 120,
          height: 150,
        ),
        Column(
          children: [Text('hsggafsf')],
        )
      ],
    );
  }
}
