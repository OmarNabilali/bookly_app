import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';
import 'package:dartz/dartz.dart';

Future<Either<Failure, List<BookEntitys>>> getRemoteFeaturedBooks({
  required HomeRemotDataSource homeRemoteDataSource,
}) async {
  try {
    var getRemoteData = await homeRemoteDataSource.fetchFeaturedBooks();
    List<BookEntitys> books = [];
    books.addAll(getRemoteData);
    return right(books);
  } on Exception catch (e) {
    return left(ServerFailure(errMessage: e.toString()));
  }
}
