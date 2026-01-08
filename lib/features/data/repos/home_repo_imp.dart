
import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart' ;
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.getData(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newst',
      );

      List<Bookmodel> books = [];
      for (var bookList in data['items']) {
        books.add(Bookmodel.fromJson(bookList));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedNewstBooks() async {
    try {
      var data = await apiService.getData(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Health&Sorting=newst&maxResults=40',
      );

      List<Bookmodel> books = [];
      for (var bookList in data['items']) {
        books.add(Bookmodel.fromJson(bookList));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedDetailesBooks({
    required String category,
  }) async {
    try {
      var data = await apiService.getData(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=relevance&maxResults=40',
      );
      List<Bookmodel> books = [];
      for (var bookList in data['items']) {
        books.add(Bookmodel.fromJson(bookList));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
