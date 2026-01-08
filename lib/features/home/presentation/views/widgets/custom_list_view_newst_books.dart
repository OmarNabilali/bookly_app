
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator_widget.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_newst_books_cubit/featured_newst_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_newst_books_cubit/featured_newst_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_featured_newst_books_widget.dart';

class CustomListViewNewstBooks extends StatelessWidget {
  const CustomListViewNewstBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedNewstBooksCubit, FeaturedNewstBooksState>(
      builder: (context, state) {
        if (state is FeaturedNewstBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return CustomFeaturedNewstBooksWidget(
                  bookmodel: state.books[index],
                );
              },
            ),
          );
        } else if (state is FeaturedNewstBooksLoading) {
          return SliverToBoxAdapter(child: CustomLoadingIndicator());
        } else if (state is FeaturedNewstBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(textError: state.errMessage),
          );
        }
        return SizedBox();
      },
    );
  }
}
