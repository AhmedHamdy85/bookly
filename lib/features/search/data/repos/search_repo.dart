import 'package:dartz/dartz.dart';

import '../../../../core/eroors/failures.dart';
import '../../../home/data/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failuers, List<BookModel>>> fetchSearchBooks(
      {required String kWord});
}
