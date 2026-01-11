import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_detailes_newst_books.dart';

class CustomFeaturedNewestBooksWidget extends StatelessWidget {
  const CustomFeaturedNewestBooksWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'http://books.google.com/books/content?id=m6lQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
                height: 180,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 15),
            CustomDetailesNewstBooks(),
          ],
        ),
      ),
    );
  }
}
