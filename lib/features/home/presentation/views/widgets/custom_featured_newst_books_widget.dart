import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_detailes_newst_books.dart';

class CustomFeaturedNewstBooksWidget extends StatelessWidget {
  const CustomFeaturedNewstBooksWidget({super.key, required this.bookmodel});
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRoutes.homeDetailes, extra: bookmodel);
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                bookmodel.volumeInfo.imageLinks?.thumbnail ??
                    "http://books.google.com/books/content?id=SkJozQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
                height: 180,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 15),
            CustomDetailesNewstBooks(bookmodel: bookmodel),
          ],
        ),
      ),
    );
  }
}
