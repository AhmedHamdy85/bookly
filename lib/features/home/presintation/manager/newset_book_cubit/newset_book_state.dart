import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class NewsetBooksStates {}

class NewsetBooksInatialState extends NewsetBooksStates {}

class NewsetBooksLoadingState extends NewsetBooksStates {}

class NewsetBooksSuccessState extends NewsetBooksStates {
  final List<BookModel> books;

  NewsetBooksSuccessState(this.books);
}

class NewsetBooksErorrState extends NewsetBooksStates {
  final String erorr;

  NewsetBooksErorrState(this.erorr);
}
