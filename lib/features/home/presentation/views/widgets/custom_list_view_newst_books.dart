import 'package:flutter/material.dart';

import 'custom_featured_newst_books_widget.dart';

class CustomListViewNewstBooks extends StatelessWidget {
  const CustomListViewNewstBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 5, (context, index) {
        return CustomFeaturedNewestBooksWidget();
      }),
    );
  }
}
