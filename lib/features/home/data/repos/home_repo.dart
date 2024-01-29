import 'package:dartz/dartz.dart';
import 'package:echo_verse/core/errors/failures.dart';
import 'package:echo_verse/features/home/data/models/books_model/books_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
}
