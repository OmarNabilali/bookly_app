import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/features/home/domain/entitys/books_entitys.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_newst_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/views/manger/newst_books_cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/utils/app_routes.dart';
import 'core/utils/service_locator.dart';
import 'features/home/presentation/views/manger/featured_books_cubit/featured_books_cubit.dart';

void main() async {
  await setupHive();

  setup();
  runApp(BooklyApp());
}

Future<void> setupHive() async {
  Hive.registerAdapter(BookEntitysAdapter());
  await Hive.initFlutter();
  await Hive.openBox<BookEntitys>(kFeaturedBooks);
  await Hive.openBox<BookEntitys>(kNewstBooks);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<FetchFeaturedBooksUseCase>())
                ..getFeatured(),
        ),

        BlocProvider(
          create: (context) =>
              NewstBooksCubit(getIt.get<FetchNewestBooksUseCase>())
                ..getNewestBooks(),
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
