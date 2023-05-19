import 'package:bookly/core/widgets/custom_erorr_wedget.dart';
import 'package:bookly/features/home/presintation/manager/features_book_cubit/features_book_cubit.dart';
import 'package:bookly/features/home/presintation/manager/features_book_cubit/features_book_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/widgets/custom_loading_indicator.dart';
import 'custm_list_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturesBooksStates>(
        builder: (context, state) {
      if (state is FeaturesBookSuccesState) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context)
                        .push('/BookDetalseViwe', extra: state.books[index]);
                  },
                  child: CustomItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks!.thumbnail,
                  ),
                ),
              );
            },
            itemCount: state.books.length,
          ),
        );
      } else if (state is FeaturesBookErorrState) {
        return CustomErorrWidget(
          erorrMessage: state.erorr,
        );
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
