import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:bookly/features/search/presintation/manager/search_cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/repos/home_repo.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.searchRepo) : super(SearchInitialState());

  final SearchRepo searchRepo;
  static SearchCubit get(context) => BlocProvider.of(context);

  Future<void> getSimilarBooks({required String kword}) async {
    emit(SearchLoadingState());
    var result = await searchRepo.fetchSearchBooks(kWord: kword);

    result.fold((failure) {
      emit(SearchErorrState(failure.errMessage));
    }, (books) {
      emit(SearchSuccesState(books));
    });
  }
}
