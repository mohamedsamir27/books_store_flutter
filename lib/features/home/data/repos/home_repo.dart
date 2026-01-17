import 'package:bookly_test/core/errors/faliures.dart';
import 'package:bookly_test/features/home/data/models/book_models/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliures, List<Item>>> fetchNewestBooks();
  Future<Either<Faliures, List<Item>>> fetchFeaturedBooks();
  Future<Either<Faliures, List<Item>>> fetchSimilarBooks({
    required String category,
  });
}
