
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';

class FeaturedNewstBooksState {}

class FeaturedNewstBooksInit extends FeaturedNewstBooksState {}

class FeaturedNewstBooksLoading extends FeaturedNewstBooksState {}

class FeaturedNewstBooksSuccess extends FeaturedNewstBooksState {
  final List<Bookmodel> books;
  FeaturedNewstBooksSuccess(this.books);
}

class FeaturedNewstBooksFailure extends FeaturedNewstBooksState {
  final String errMessage;
  FeaturedNewstBooksFailure({required this.errMessage});
}
