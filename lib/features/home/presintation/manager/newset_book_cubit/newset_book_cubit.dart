import 'package:bookly/features/home/presintation/manager/newset_book_cubit/newset_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksStates> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInatialState());

  final HomeRepo homeRepo;

  Future<void> getFeaturesBooks() async {
    emit(NewsetBooksLoadingState());
    var result = await homeRepo.fetchNewsedBooks();

    result.fold((failure) {
      emit(NewsetBooksErorrState(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccessState(books));
    });
  }
}
