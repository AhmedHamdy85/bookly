import 'package:bookly/core/utilty/service_locator.dart';
import 'package:bookly/features/search/presintation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/search_repo_impl.dart';
import 'widgets/search_view_body.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImpli>()),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
