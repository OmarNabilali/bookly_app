
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({super.key, required this.bookmodel});
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 110,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
          child: const Center(
            child: Text('19.99\$', style: TextStyle(color: Colors.black)),
          ),
        ),
        GestureDetector(
          onTap: () async {
            Uri url = Uri.parse(
              bookmodel.volumeInfo.previewLinkel ??
                  'http://books.google.com.eg/books?id=glg_AQAAIAAJ&dq=subject:Programming&hl=&cd=1&source=gbs_api',
            );
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            }
          },
          child: Container(
            height: 50,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.deepOrange.withOpacity(.6),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                'Free Preview',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
