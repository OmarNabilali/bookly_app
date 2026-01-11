import 'package:bookly_app/core/utils/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/featured_detailes/presentation/views/widgets/custom_listview_simillar_books.dart';
import 'package:bookly_app/features/home/featured_detailes/presentation/views/widgets/featured_details_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFeaturedDetailesViewBody extends StatelessWidget {
  const CustomFeaturedDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppBar(
              leading: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(Icons.clear),
              ),
              action: IconButton(
                onPressed: () {},
                icon: Icon(Icons.card_travel_rounded),
              ),
            ),
          ),

          SliverToBoxAdapter(child: CustomFeaturedDetailsView()),
          SliverToBoxAdapter(child: SizedBox(height: 45)),
          SliverToBoxAdapter(child: Text('title')),
          SliverToBoxAdapter(child: SizedBox(height: 20)),

          SliverToBoxAdapter(child: CustomListviewSimillarBooks()),
        ],
      ),
    );
  }
}
