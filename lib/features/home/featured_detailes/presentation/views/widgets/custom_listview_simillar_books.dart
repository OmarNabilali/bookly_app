import 'package:flutter/material.dart';

class CustomListviewSimillarBooks extends StatelessWidget {
  const CustomListviewSimillarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: PageScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                width: 95,

                "http://books.google.com/books/content?id=SkJozQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
