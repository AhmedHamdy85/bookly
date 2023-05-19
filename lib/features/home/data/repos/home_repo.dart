import 'package:bookly/core/eroors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BookModel>>> fetchNewsedBooks();
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBoox();
  Future<Either<Failuers, List<BookModel>>> fetchSimilarBoox(
      {required String catigory});
}
