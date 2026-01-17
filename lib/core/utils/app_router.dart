import 'package:bookly_test/core/utils/service_locator.dart';
import 'package:bookly_test/features/home/data/models/book_models/item.dart';
import 'package:bookly_test/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_test/features/home/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_test/features/home/views/book_details_view.dart';
import 'package:bookly_test/features/home/views/home_view.dart';
import 'package:bookly_test/features/search/presentation/views/search_view.dart';
import 'package:bookly_test/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kSearchView = '/SearchView';
  static const kBookDetails = '/BookDetails';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(item: state.extra as Item),
        ),
      ),
    ],
  );
}
