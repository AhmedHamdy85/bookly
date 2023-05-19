import 'package:bookly/core/utilty/api_servece.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/eroors/failures.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failuers, List<BookModel>>> fetchNewsedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=Flutter');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailuers.fromDioError(e));
      }
      return left(ServerFailuers(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBoox() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=Mobile Devalobment');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailuers.fromDioError(e));
      }
      return left(ServerFailuers(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchSimilarBoox(
      {required String catigory}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=$catigory');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailuers.fromDioError(e));
      }
      return left(ServerFailuers(e.toString()));
    }
  }
}
