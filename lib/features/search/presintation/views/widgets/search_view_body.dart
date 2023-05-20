import 'package:flutter/material.dart';

import '../../../../home/presintation/views/widget/Home screen wedgets/best_seller_lis_view_item.dart';
import 'custm_search_text_filed.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          CustomSearchTextFiled(),
          const SizedBox(
            height: 20,
          ),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
