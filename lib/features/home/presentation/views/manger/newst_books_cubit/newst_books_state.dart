import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';

abstract class NewestBooksState {}

class NewestBooksInitState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookEntitys> books;
  NewestBooksSuccessState({required this.books});
}

class NewestBooksFailureState extends NewestBooksState {
  final String errMessage;
  NewestBooksFailureState({required this.errMessage});
}
