import 'package:bookly/core/utilty/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemintation.dart';
import 'package:bookly/features/home/presintation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presintation/views/book_view_details.dart';
import 'package:bookly/features/home/presintation/views/home_view.dart';
import 'package:bookly/features/search/presintation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presintation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashViwe(),
    ),
    GoRoute(
      path: '/homeViwe',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/BookDetalseViwe',
      builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDietalsViwe(
            book: state.extra as BookModel,
          )),
    ),
    GoRoute(
      path: '/searchviwe',
      builder: (context, state) => const Searchview(),
    ),
  ]);
}
