
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';

class FeaturedDetailesState {}

class FeaturedDetailesStateInit extends FeaturedDetailesState {}

class FeaturedDetailesLoadingState extends FeaturedDetailesState {}

class FeaturedDettailesSuccessState extends FeaturedDetailesState {
  final List<Bookmodel> books;

  FeaturedDettailesSuccessState(this.books);
}

class FeaturedDetailesFailureState extends FeaturedDetailesState {
  final String errMessage;
  FeaturedDetailesFailureState({required this.errMessage});
}
