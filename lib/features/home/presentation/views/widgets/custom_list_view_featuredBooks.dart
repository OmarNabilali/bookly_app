
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator_widget.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_featured_books.dart';

class CustomListViewFeaturedbooks extends StatelessWidget {
  const CustomListViewFeaturedbooks({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: CustomFeaturedBooks(
                    bookmodel: state.books[index],
                    img:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                        "http://books.google.com/books/content?id=SkJozQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(textError: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
