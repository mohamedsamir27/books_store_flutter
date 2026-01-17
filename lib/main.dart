import 'package:bookly_test/constants.dart';
import 'package:bookly_test/core/utils/app_router.dart';
import 'package:bookly_test/core/utils/service_locator.dart';
import 'package:bookly_test/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_test/features/home/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_test/features/home/manager/newest_books_cubit/newest_books_cubit.dart';
// import 'package:bookly_test/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get_navigation/get_navigation.dart';

void main() {
  configureDependencies();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimary),
      ),
    );
  }
}
