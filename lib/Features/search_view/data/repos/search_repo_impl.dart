import 'package:bookly/Features/search_view/data/repos/search_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/core/utils/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl({required this.apiServices});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({
    required String title,
  }) async {
    try {
      var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:$title&sorting=newest',
      );
      List<BookModel> bookModel = [];
      for (var item in data['items']) {
        bookModel.add(BookModel.fromJson(item));
      }
      return right(bookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
