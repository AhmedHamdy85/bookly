import 'package:bookly/constuns.dart';
import 'package:bookly/core/utilty/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemintation.dart';
import 'package:bookly/features/home/presintation/manager/features_book_cubit/features_book_cubit.dart';
import 'package:bookly/features/home/presintation/manager/newset_book_cubit/newset_book_cubit.dart';
import 'package:bookly/features/splash/presintation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utilty/app_routs.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..getFeaturesBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBooksCubit(getIt.get<HomeRepoImpl>())..getNewsetBooks(),
        ),
      ],
      child: MaterialApp.router( 
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: prymarycolor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
