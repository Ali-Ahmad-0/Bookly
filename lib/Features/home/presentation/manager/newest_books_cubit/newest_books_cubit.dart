import 'package:bloc/bloc.dart';
import 'package:bookly/core/utils/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  
 final HomeRepo homeRepo;
  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());

    var results = await homeRepo.fetchNewestBooks();
    results.fold((failure) {
      emit(NewestBooksFailure(message: failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
