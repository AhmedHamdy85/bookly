import 'package:bookly/features/home/presintation/views/book_view_details.dart';
import 'package:bookly/features/home/presintation/views/home_view.dart';
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
      builder: (context, state) => const BookDietalsViwe(),
    )
  ]);
}
