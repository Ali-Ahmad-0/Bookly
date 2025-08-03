import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search_view/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
static const String khomeview = '/homeview';
static const String kBookDetails = '/bookdetails';
static const String ksearch = '/searchView';
  
static final   router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: ( context , state)  => const SplashView()
      
    
    ),
    GoRoute(
      path: khomeview,
      builder: ( context,  state) => const HomeView()
    
    ),
    GoRoute(
      path: kBookDetails,
      builder: ( context,  state) => const BookDetailsView()
    
    ),
    GoRoute(
      path: ksearch,
      builder: ( context,  state) => const SearchView()
    
    ),
  ],
);

}

