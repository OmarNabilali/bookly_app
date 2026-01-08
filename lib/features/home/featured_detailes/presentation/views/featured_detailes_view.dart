import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart' show Bookmodel;
import 'package:bookly_app/features/home/presentation/views/manger/featured_detailes_cubit/featured_detaile_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/custom_featured_detailes_view_body.dart';

class FeaturedDetailesView extends StatefulWidget {
  const FeaturedDetailesView({super.key, required this.bookmodel});
  final Bookmodel bookmodel;

  @override
  State<FeaturedDetailesView> createState() => _FeaturedDetailesViewState();
}

class _FeaturedDetailesViewState extends State<FeaturedDetailesView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FeaturedDetaileCubit>(
      context,
    ).getDetailes(category: widget.bookmodel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomFeaturedDetailesViewBody(
          bookmodel: widget.bookmodel,
          img:
              widget.bookmodel.volumeInfo.imageLinks?.thumbnail ??
              "http://books.google.com/books/content?id=6pdiEQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
          title: widget.bookmodel.volumeInfo.title!,
          author: widget.bookmodel.volumeInfo.authors![0],
        ),
      ),
    );
  }
}
