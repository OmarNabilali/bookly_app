import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepos {
  Future<Either<Failure, List<BookEntitys>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntitys>>> fetchNewestBooks();
}
