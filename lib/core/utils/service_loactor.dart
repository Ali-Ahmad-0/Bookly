import 'package:bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/Features/search_view/data/repos/search_repo_impl.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(dio: Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(apiServices: getIt.get<ApiServices>()),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(apiServices: getIt.get<ApiServices>())
  );
}

