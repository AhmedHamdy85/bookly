import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class FetchSimilarBooksStates {}

class FetchSimilarBooksInatialState extends FetchSimilarBooksStates {}

class FetchSimilarBooksSuccesState extends FetchSimilarBooksStates {
  final List<BookModel> book;

  FetchSimilarBooksSuccesState(this.book);
}

class FetchSimilarBooksLoadingState extends FetchSimilarBooksStates {}

class FetchSimilarBooksErorrState extends FetchSimilarBooksStates {
  final String erorr;

  FetchSimilarBooksErorrState(this.erorr);
}
