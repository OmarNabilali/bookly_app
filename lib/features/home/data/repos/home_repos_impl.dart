import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';
import 'package:bookly_app/features/home/domain/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl extends HomeRepos {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemotDataSource homeRemotDataSource;

  HomeReposImpl({
    required this.homeLocalDataSource,
    required this.homeRemotDataSource,
  });
  @override
  Future<Either<Failure, List<BookEntitys>>> fetchFeaturedBooks() async {
    try {
      var localBooks = homeLocalDataSource.fetchFeatured();
      var remotBooks = await homeRemotDataSource.fetchFeaturedBooks();
      List<BookEntitys> books = [];

      books.addAll(remotBooks);
      if (localBooks.isEmpty) {
        return right(books);
      } else {
        return right(localBooks);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntitys>>> fetchNewestBooks() async {
    try {
      List<BookEntitys> localList = homeLocalDataSource.fetchNewst();
      var remoteList = await homeRemotDataSource.fetchNewstBooks();
      List<BookEntitys> books = [];
      books.addAll(remoteList);
      if (localList.isNotEmpty) {
        return right(localList);
      } else {
        return right(books);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
