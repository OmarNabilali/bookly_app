import 'package:bookly_app/features/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_detailes_state.dart';

class FeaturedDetaileCubit extends Cubit<FeaturedDetailesState> {
  FeaturedDetaileCubit(this.homeRepo) : super(FeaturedDetailesStateInit());
  HomeRepo homeRepo;
  getDetailes({required String category}) async {
    var result = await homeRepo.fetchFeaturedDetailesBooks(category: category);
    emit(FeaturedDetailesLoadingState());
    result.fold(
      (failure) {
        emit(FeaturedDetailesFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(FeaturedDettailesSuccessState(books));
      },
    );
  }
}
