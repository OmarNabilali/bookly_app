import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase)
    : super(FeaturedBooksInitState());
  FetchFeaturedBooksUseCase featuredBooksUseCase;

  getFeatured() async {
    var result = await featuredBooksUseCase.call();
    emit(FeaturedBooksLoadingState());
    result.fold(
      (failure) {
        emit(FeaturedBooksFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(FeaturedBooksSuccessState(books: books));
      },
    );
  }
}
