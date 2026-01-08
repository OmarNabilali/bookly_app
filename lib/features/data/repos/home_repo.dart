
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedNewstBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedDetailesBooks({
    required String category,
  });
}
