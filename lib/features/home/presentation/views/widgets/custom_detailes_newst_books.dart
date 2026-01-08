import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDetailesNewstBooks extends StatelessWidget {
  const CustomDetailesNewstBooks({super.key, required this.bookmodel});
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            bookmodel.volumeInfo.title!,
            maxLines: 2,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            bookmodel.volumeInfo.authors?[0] ?? '',
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('222', overflow: TextOverflow.ellipsis, maxLines: 2),
              const SizedBox(width: 12),
              const Expanded(child: Text('4.8 (400)')),
            ],
          ),
        ],
      ),
    );
  }
}
