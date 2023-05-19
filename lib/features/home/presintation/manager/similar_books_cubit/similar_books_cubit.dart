import 'package:bookly/features/home/presintation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

class SimilarBooksCubit extends Cubit<FetchSimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(FetchSimilarBooksInatialState());

  final HomeRepo homeRepo;

  Future<void> getSimilarBooks({required String catigory}) async {
    emit(FetchSimilarBooksLoadingState());
    var result = await homeRepo.fetchSimilarBoox(catigory: catigory);

    result.fold((failure) {
      emit(FetchSimilarBooksErorrState(failure.errMessage));
    }, (books) {
      emit(FetchSimilarBooksSuccesState(books));
    });
  }
}
