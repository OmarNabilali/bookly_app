import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSplashViewBody extends StatefulWidget {
  const CustomSplashViewBody({super.key});

  @override
  State<CustomSplashViewBody> createState() => _CustomSplashViewBodyState();
}

class _CustomSplashViewBodyState extends State<CustomSplashViewBody>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    navigatToHomeView(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppAssets.logo, height: 80),
        SizedBox(height: 12),
        Text('Books Are Free', style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

void navigatToHomeView(BuildContext context) {
  Future.delayed(Duration(seconds: 2), () {
    GoRouter.of(context).push(AppRoutes.homeView);
  });
}
