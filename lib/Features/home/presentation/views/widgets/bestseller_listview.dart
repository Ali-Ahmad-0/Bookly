import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bestSeller_listview_item.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.isScrollable});
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return Skeletonizer(
            child: ListView.builder(
              shrinkWrap: true,
              physics: isScrollable
                  ? AlwaysScrollableScrollPhysics()
                  : NeverScrollableScrollPhysics(), // disable scroll on this list
              itemCount: 8,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: 8,
                    horizontal: 24,
                  ),
                  child: NewestListViewItem(),
                );
              },
            ),
          );
        } else if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: isScrollable
                ? AlwaysScrollableScrollPhysics()
                : NeverScrollableScrollPhysics(), // disable scroll on this list
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsGeometry.symmetric(
                  vertical: 8,
                  horizontal: 24,
                ),
                child: NewestListViewItem(book: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return Center(child: Text(state.message));
        } else {
          return SizedBox(
            child: Center(
              child: Text(
                'There is something went wrong !!',
                style: Styles.textstyle20,
              ),
            ),
          );
        }
      },
    );
  }
}
