import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator_widget.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_detailes_cubit/featured_detaile_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_detailes_cubit/featured_detailes_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListviewSimillarBooks extends StatelessWidget {
  const CustomListviewSimillarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedDetaileCubit, FeaturedDetailesState>(
      builder: (context, state) {
        if (state is FeaturedDettailesSuccessState) {
          return SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: PageScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      width: 95,
                      state.books[index].volumeInfo.imageLinks?.thumbnail ??
                          "http://books.google.com/books/content?id=SkJozQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedDetailesFailureState) {
          return CustomErrorWidget(textError: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
