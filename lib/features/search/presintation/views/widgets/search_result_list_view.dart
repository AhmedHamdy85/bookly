import 'package:bookly/core/widgets/custom_erorr_wedget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/search/presintation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presintation/manager/search_cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presintation/views/widget/Home screen wedgets/best_seller_lis_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(builder: (context, state) {
      if (state is SearchSuccesState && state.book.isNotEmpty) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: state.book.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BookListViweItem(
              book: state.book[index],
            ),
          ),
        );
      } else if (state is SearchLoadingState) {
        return const CustomLoadingIndicator();
      } else if (state is SearchErorrState) {
        return CustomErorrWidget(erorrMessage: state.erorr);
      } else {
        return Text('enter word to search');
      }
    });
  }
}
