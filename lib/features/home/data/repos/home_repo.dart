import 'package:bookly/core/eroors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BookModel>>> fetchBestSellerBoox();
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBoox();
}
