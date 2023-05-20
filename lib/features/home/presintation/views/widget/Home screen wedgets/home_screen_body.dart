import 'package:bookly/core/utilty/assits.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../constuns.dart';
import '../../../../../../core/utilty/styles.dart';
import 'best_seller_lis_view_item.dart';
import 'best_seller_list_view.dart';
import 'custm_list_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_viwe.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: CustomAppBar(),
              ),
              ItemListView(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Most Seen',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: BestSellerListViwe(),
          ),
        )
      ],
    );
  }
}
