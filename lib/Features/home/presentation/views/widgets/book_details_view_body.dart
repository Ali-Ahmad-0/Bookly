import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_detail_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_bookDetails_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_featured_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomBookDetailsAppBar()),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                SizedBox(height: 12),
                BookDetailsSection(bookModel: bookModel),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textstyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SimilarFeatureListView(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
