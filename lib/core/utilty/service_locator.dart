import 'package:bookly/core/utilty/api_servece.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemintation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
