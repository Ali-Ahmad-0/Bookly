import 'package:bookly/Features/home/presentation/views/widgets/bestSeller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.isScrollable});
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: isScrollable
          ? AlwaysScrollableScrollPhysics()
          : NeverScrollableScrollPhysics(), // disable scroll on this list
      itemCount: 8,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 8, horizontal: 24),
          child: BestsellerListViewItem(),
        );
      },
    );
  }
}
