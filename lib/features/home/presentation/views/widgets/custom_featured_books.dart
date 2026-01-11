import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFeaturedBooks extends StatelessWidget {
  const CustomFeaturedBooks({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              'http://books.google.com/books/content?id=m6lQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
