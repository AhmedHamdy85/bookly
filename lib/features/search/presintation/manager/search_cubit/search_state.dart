import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class SearchStates {}

class SearchInitialState extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchSuccesState extends SearchStates {
  final List<BookModel> book;

  SearchSuccesState(this.book);
}

class SearchErorrState extends SearchStates {
  final String erorr;

  SearchErorrState(this.erorr);
}
