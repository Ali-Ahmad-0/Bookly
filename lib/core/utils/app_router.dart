import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/Features/home/presentation/manager/features_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/similar_books/similarbooks_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search_view/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/service_loactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String khomeview = '/homeview';
  static const String kBookDetails = '/bookdetails';
  static const String ksearch = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: khomeview, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarbooksCubit(getIt.get<HomeRepoImplementation>()),
          child:  BookDetailsView(bookModel: state.extra as BookModel ),
        ),
      ),
      GoRoute(path: ksearch, builder: (context, state) => const SearchView()),
    ],
  );
}
