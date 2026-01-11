import 'package:bookly_app/features/splash/presentation/views/widgets/custom_rating_widget.dart';
import 'package:flutter/material.dart';

class CustomFeaturedDetailsView extends StatelessWidget {
  const CustomFeaturedDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'http://books.google.com/books/content?id=m6lQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
          height: 150,
          width: 125,
        ),
        const SizedBox(height: 25),
        Text('title', style: TextStyle(fontSize: 22)),
        Text('author', style: TextStyle(fontSize: 22)),
        const Text('4.40(255)', style: TextStyle(fontSize: 22)),
        const SizedBox(height: 20),
        CustomRatingWidget(),
      ],
    );
  }
}
