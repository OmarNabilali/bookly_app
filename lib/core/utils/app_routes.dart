
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/featured_detailes/presentation/views/featured_detailes_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/views/manger/featured_detailes_cubit/featured_detaile_cubit.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class AppRoutes {
  static const homeView = '/homeView';
  static const homeDetailes = '/homeDetailes';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: homeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: homeDetailes,
        builder: (context, state) => BlocProvider(
          create: (context) => FeaturedDetaileCubit(getIt.get<HomeRepoImp>()),
          child: FeaturedDetailesView(bookmodel: state.extra as Bookmodel),
        ),
      ),
    ],
  );
}
