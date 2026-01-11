import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_featuredBooks.dart';
import 'custom_list_view_newst_books.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                leading: Image.asset(AppAssets.logo, height: 20),
                action: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ),
            ),

            SliverToBoxAdapter(child: CustomListViewFeaturedbooks()),
            SliverToBoxAdapter(child: SizedBox(height: 25)),
            SliverToBoxAdapter(child: Text('Best Selletr')),
            SliverToBoxAdapter(child: SizedBox(height: 12)),

            CustomListViewNewstBooks(),
          ],
        ),
      ),
    );
  }
}
