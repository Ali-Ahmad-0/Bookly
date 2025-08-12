import 'package:bookly/Features/home/presentation/manager/similar_books/similarbooks_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SimilarFeatureListView extends StatelessWidget {
  const SimilarFeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: Expanded(
        child: BlocBuilder<SimilarbooksCubit, SimilarbooksState>(
          builder: (context, state) {
            if (state is SimilarbooksLoading) {
              return Skeletonizer(
                child: ListView.builder(
                  itemCount: 6,

                  itemBuilder: (context, index) {
                    return CustomListViewItem(
                      imageUrl:
                          'https://tse1.mm.bing.net/th/id/OIP.s6qkxOqsGKB_7JnvbKujWAHaE2?rs=1&pid=ImgDetMain&o=7&rm=3',
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              );
            } else if (state is SimilarbooksSuccess) {
              return ListView.builder(
                itemCount: state.similarBooks.length,

                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetails,
                        extra: state.similarBooks[index],
                      );
                    },
                    child: CustomListViewItem(
                      imageUrl:
                          state
                              .similarBooks[index]
                              .volumeInfo
                              ?.imageLinks
                              ?.smallThumbnail ??
                          'https://tse1.mm.bing.net/th/id/OIP.ctLBE7HDwQz10BiYBlcejgHaHR?rs=1&pid=ImgDetMain&o=7&rm=3',
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              );
            } else if (state is SimilarbooksFailure) {
              return Center(
                child: Text(state.errMessage, style: Styles.textstyle18),
              );
            } else {
              return Center(
                child: Text('There is something went wrong , try again later'),
              );
            }
          },
        ),
      ),
    );
  }
}
