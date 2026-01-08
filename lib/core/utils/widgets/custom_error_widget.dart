import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.textError});
  final String textError;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(textError));
  }
}
