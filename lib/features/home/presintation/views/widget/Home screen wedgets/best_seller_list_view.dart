import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presintation/manager/newset_book_cubit/newset_book_cubit.dart';
import 'package:bookly/features/home/presintation/manager/newset_book_cubit/newset_book_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/custom_erorr_wedget.dart';
import 'best_seller_lis_view_item.dart';

class BestSellerListViwe extends StatelessWidget {
  const BestSellerListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksStates>(
        builder: (context, state) {
      if (state is NewsetBooksSuccessState) {
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BookListViweItem(
              book: state.books[index],
            ),
          ),
        );
      } else if (state is NewsetBooksErorrState) {
        return CustomErorrWidget(
          erorrMessage: state.erorr,
        );
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
