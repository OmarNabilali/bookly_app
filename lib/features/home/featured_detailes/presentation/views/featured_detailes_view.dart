import 'package:flutter/material.dart';

import 'widgets/custom_featured_detailes_view_body.dart';

class FeaturedDetailesView extends StatefulWidget {
  const FeaturedDetailesView({super.key});

  @override
  State<FeaturedDetailesView> createState() => _FeaturedDetailesViewState();
}

class _FeaturedDetailesViewState extends State<FeaturedDetailesView> {
  @override
  // void initState() {
  //   super.initState();
  //   BlocProvider.of<FeaturedDetaileCubit>(
  //     context,
  //   ).
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: CustomFeaturedDetailesViewBody()));
  }
}
