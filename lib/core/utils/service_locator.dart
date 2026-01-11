import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/data/repos/home_repos_impl.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FetchFeaturedBooksUseCase>(
    FetchFeaturedBooksUseCase(
      HomeReposImpl(
        homeLocalDataSource: HomeLocalDataSourceImpl(),
        homeRemotDataSource: HomeRemotDataSourceImpl(ApiService(Dio())),
      ),
    ),
  );
}
