import 'package:bloc/bloc.dart';
import 'package:bookly/Features/search_view/data/repos/search_repo.dart';
import 'package:bookly/core/utils/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'searchedbooks_state.dart';

class SearchedbooksCubit extends Cubit<SearchedbooksState> {
  SearchedbooksCubit(this.searchRepo) : super(SearchedbooksInitial());
  final SearchRepo searchRepo;

  Future<void> getSearchedBooks({required String title}) async {
    emit(SearchedbooksLoading());
    var result = await searchRepo.fetchSearchedBooks(title: title);
    result.fold(
      (failure) {
        emit(SearchedbooksFailure(errMessage: failure.errorMessage));
      },
      (success) {
        emit(SearchedbooksSuccess(bookModel: success));
      },
    );
  }
}
