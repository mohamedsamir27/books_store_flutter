import 'package:bookly_test/core/errors/faliures.dart';
import 'package:bookly_test/core/utils/api_services.dart';
import 'package:bookly_test/features/home/data/models/book_models/book_models.dart';
import 'package:bookly_test/features/home/data/models/book_models/item.dart';
import 'package:bookly_test/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Faliures, List<Item>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
        endpoint:
            'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming',
      );
      final response = BookModels.fromJson(data);
      return right(response.items ?? []);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioException(e));
      }

      return left(ServerFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Faliures, List<Item>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
        endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
      );
      final response = BookModels.fromJson(data);
      return right(response.items ?? []);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioException(e));
      }

      return left(ServerFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Faliures, List<Item>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var data = await apiServices.get(
        endpoint:
            'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming',
      );
      final response = BookModels.fromJson(data);
      return right(response.items ?? []);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioException(e));
      }

      return left(ServerFaliure(e.toString()));
    }
  }
}
