import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/app_routes.dart';
import 'core/utils/service_locator.dart';
import 'features/data/repos/home_repo_imp.dart';
import 'features/home/presentation/views/manger/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/views/manger/featured_newst_books_cubit/featured_newst_books_cubit.dart';

void main() {
  setup();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImp>())
                ..featuredBooksCubit(),
        ),
        BlocProvider(
          create: (context) =>
              FeaturedNewstBooksCubit(getIt.get<HomeRepoImp>())..get(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,

        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff100B20),
        ),
      ),
    );
  }
}
