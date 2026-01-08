import 'package:bookly_app/features/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_newst_books_state.dart';

class FeaturedNewstBooksCubit extends Cubit<FeaturedNewstBooksState> {
  FeaturedNewstBooksCubit(this.homeRepo) : super(FeaturedNewstBooksInit());
  HomeRepo homeRepo;

  Future<void> get() async {
    emit(FeaturedNewstBooksLoading());
    var result = await homeRepo.fetchFeaturedNewstBooks();

    result.fold(
      (failure) {
        emit(FeaturedNewstBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(FeaturedNewstBooksSuccess(books));
      },
    );
  }
}
