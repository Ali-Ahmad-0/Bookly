import 'package:bookly/Features/home/presentation/views/widgets/bestSeller_listview_item.dart';
import 'package:bookly/Features/search_view/data/repos/manager/searched_books_cubit/searchedbooks_cubit.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchedbooksListview extends StatelessWidget {
  const SearchedbooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedbooksCubit, SearchedbooksState>(
      builder: (context, state) {
        if (state is SearchedbooksLoading) {
          return Skeletonizer(
            child: ListView.builder(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: 5,
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
        } else if (state is SearchedbooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: state.bookModel.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsGeometry.symmetric(
                  vertical: 8,
                  horizontal: 24,
                ),
                child: NewestListViewItem(book: state.bookModel[index]),
              );
            },
          );
        } else if (state is SearchedbooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return SizedBox(
            child: Center(
              child: Text(
                'There is no searched books yet',
                style: Styles.textstyle20,
              ),
            ),
          );
        }
      },
    );
  }
}
