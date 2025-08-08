
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:flutter/material.dart';

class SimilareatureListView extends StatelessWidget {
  const SimilareatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      child: Expanded(
        child: ListView.builder(
          itemCount: 6,

          itemBuilder: (context, index) {
            return CustomListViewItem(imageUrl: 'http://books.google.com/books/content?id=Od4yAAAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',);
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
    ;
  }
}
