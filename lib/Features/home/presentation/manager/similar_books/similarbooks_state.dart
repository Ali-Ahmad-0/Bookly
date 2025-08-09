part of 'similarbooks_cubit.dart';

sealed class SimilarbooksState extends Equatable {
  const SimilarbooksState();

  @override
  List<Object> get props => [];
}

final class SimilarbooksInitial extends SimilarbooksState {}

final class SimilarbooksSuccess extends SimilarbooksState {
  final List<BookModel> similarBooks;

const  SimilarbooksSuccess({required this.similarBooks});
  


}

final class SimilarbooksFailure extends SimilarbooksState {
  final String errMessage;
 const SimilarbooksFailure({required this.errMessage});
}

final class SimilarbooksLoading extends SimilarbooksState {}
