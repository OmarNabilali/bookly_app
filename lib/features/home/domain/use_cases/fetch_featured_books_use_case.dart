import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_case/no_param_use_case.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';
import 'package:bookly_app/features/home/domain/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends NoParamUseCase<List<BookEntitys>> {
  HomeRepos homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntitys>>> call() {
    return homeRepo.fetchFeaturedBooks();
  }
}
