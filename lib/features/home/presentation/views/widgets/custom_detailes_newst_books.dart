import 'package:flutter/material.dart';

class CustomDetailesNewstBooks extends StatelessWidget {
  const CustomDetailesNewstBooks({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text('022', maxLines: 2, style: const TextStyle(fontSize: 20)),
          Text('00', overflow: TextOverflow.ellipsis),
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
