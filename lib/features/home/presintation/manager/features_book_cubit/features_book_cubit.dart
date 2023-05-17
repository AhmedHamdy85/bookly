import 'dart:ffi';

import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presintation/manager/features_book_cubit/features_book_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturesBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturesBookInitialState());

  final HomeRepo homeRepo;

  Future<void> getFeaturesBooks() async {
    emit(FeaturesBookLoadingState());
    var result = await homeRepo.fetchFeaturedBoox();

    result.fold((failure) {
      emit(FeaturesBookErorrState(failure.errMessage));
    }, (books) {
      emit(FeaturesBookSuccesState(books));
    });
  }
}
