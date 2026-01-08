
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/custom_rating_widget.dart';
import 'package:flutter/material.dart';

class CustomFeaturedDetailsView extends StatelessWidget {
  const CustomFeaturedDetailsView({
    super.key,
    required this.title,
    required this.author,
    required this.img,
    required this.bookmodel,
  });
  final String title;
  final String author;
  final String img;
  final Bookmodel bookmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(img, height: 150, width: 125),
        const SizedBox(height: 25),
        Text(title, style: TextStyle(fontSize: 22)),
        Text(author, style: TextStyle(fontSize: 22)),
        const Text('4.40(255)', style: TextStyle(fontSize: 22)),
        const SizedBox(height: 20),
        CustomRatingWidget(bookmodel: bookmodel),
      ],
    );
  }
}
