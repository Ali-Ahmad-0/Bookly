import 'package:bookly/Features/home/presentation/manager/features_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FeaturedLIstView extends StatelessWidget {
  const FeaturedLIstView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
            builder: (context, state) {
              if (state is FeaturedBooksLoading) {
                return Skeletonizer(
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (context, index) {
                      return CustomListViewItem(
                        imageUrl:
                            'http://books.google.com/books/content?id=O6ts42ywcEoC&printsec=frontcover&img=1&zoom=1&source=gbs_api',
                      );
                    },
                  ),
                );
              } else if (state is FeaturedBooksFailure) {
                return Center(child: Text(state.errMessage));
              } else if (state is FeaturedBooksSuccess) {
                return ListView.builder(
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetails,
                          extra: state.books[index],
                        );
                      },
                      child: CustomListViewItem(
                        imageUrl: state
                            .books[index]
                            .volumeInfo
                            ?.imageLinks
                            ?.thumbnail,
                      ),
                    );
                  },
                );
              } else {
                return Text('error');
              }
            },
          ),
        ),
      ),
    );
  }
}
