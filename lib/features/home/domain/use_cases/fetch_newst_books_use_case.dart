import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_case/no_param_use_case.dart';
import 'package:bookly_app/features/home/domain/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends NoParamUseCase {
  HomeRepos homeRepos;
  FetchNewestBooksUseCase(this.homeRepos);

  @override
  Future<Either<Failure, dynamic>> call() {
    return homeRepos.fetchNewestBooks();
  }
}
