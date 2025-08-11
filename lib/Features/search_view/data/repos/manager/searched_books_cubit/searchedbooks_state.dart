part of 'searchedbooks_cubit.dart';

sealed class SearchedbooksState extends Equatable {
  const SearchedbooksState();

  @override
  List<Object> get props => [];
}

final class SearchedbooksInitial extends SearchedbooksState {}

final class SearchedbooksLoading extends SearchedbooksState {}

final class SearchedbooksSuccess extends SearchedbooksState {
  final List<BookModel> bookModel;

  const SearchedbooksSuccess({required this.bookModel});
}

final class SearchedbooksFailure extends SearchedbooksState {
  final String errMessage;
 const SearchedbooksFailure({required this.errMessage});
}
