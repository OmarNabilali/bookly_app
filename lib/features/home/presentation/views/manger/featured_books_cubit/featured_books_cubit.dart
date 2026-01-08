import 'package:bookly_app/features/data/repos/home_repo_imp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImp) : super(FeaturedBooksInitState());
  HomeRepoImp homeRepoImp;

  Future<void> featuredBooksCubit() async {
    var result = await homeRepoImp.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailureState(errMessage: failure.errMessage));
        print('Success');
      },
      (books) {
        emit(FeaturedBooksSuccessState(books));
        print('Failure');
      },
    );
  }
}
