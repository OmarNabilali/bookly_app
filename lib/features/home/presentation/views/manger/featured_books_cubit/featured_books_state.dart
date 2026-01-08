
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';

class FeaturedBooksState {}

class FeaturedBooksInitState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<Bookmodel> books;

  FeaturedBooksSuccessState(this.books);
}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;
  FeaturedBooksFailureState({required this.errMessage});
}
