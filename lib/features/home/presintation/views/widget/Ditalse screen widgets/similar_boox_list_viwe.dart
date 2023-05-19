import 'package:bookly/core/widgets/custom_erorr_wedget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presintation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/similar_books_cubit/similar_books_cubit.dart';
import '../Home screen wedgets/custm_list_item.dart';

class SimilarBooksListViwe extends StatelessWidget {
  const SimilarBooksListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, FetchSimilarBooksStates>(
        builder: (context, state) {
      if (state is FetchSimilarBooksSuccesState) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CustomItem(
                  imageUrl:
                      state.book[index].volumeInfo.imageLinks?.smallThumbnail ??
                          'https://th.bing.com/th/id/OIP.AC9frN1qFnn-I2JCycN8fwHaEK?pid=ImgDet&rs=1',
                ),
              );
            },
            itemCount: state.book.length,
          ),
        );
      } else if (state is FetchSimilarBooksErorrState) {
        return CustomErorrWidget(erorrMessage: state.erorr);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
