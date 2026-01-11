import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;
  FeaturedBooksFailureState({required this.errMessage});
}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookEntitys> books;
  FeaturedBooksSuccessState({required this.books});
}
