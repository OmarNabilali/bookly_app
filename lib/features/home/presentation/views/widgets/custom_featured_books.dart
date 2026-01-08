import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFeaturedBooks extends StatelessWidget {
  const CustomFeaturedBooks({
    super.key,
    required this.img,
    required this.bookmodel,
  });
  final String img;
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.homeDetailes, extra: bookmodel);
      },
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
