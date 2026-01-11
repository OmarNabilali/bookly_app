import 'package:bookly_app/features/home/domain/use_cases/fetch_newst_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/views/manger/newst_books_cubit/newst_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewstBooksCubit extends Cubit<NewestBooksState> {
  NewstBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitState());
  FetchNewestBooksUseCase fetchNewestBooksUseCase;
  getNewestBooks() async {
    var result = await fetchNewestBooksUseCase.call();
    emit(NewestBooksLoadingState());
    result.fold(
      (failure) {
        emit(NewestBooksFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccessState(books: books));
      },
    );
  }
}
