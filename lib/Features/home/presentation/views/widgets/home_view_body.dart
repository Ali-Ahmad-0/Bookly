import 'package:bookly/Features/home/presentation/views/widgets/bestseller_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),

        const Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeaturedLIstView(),
                    Padding(
                      padding: EdgeInsets.only(left: 24, top: 55),
                      child: Text('Best seller', style: Styles.textstyle18),
                    ),
                    //   BestSellerListView(),
                  ],
                ),
              ),
              SliverFillRemaining(child: BestSellerListView()),
            ],
          ),
        ),
      ],
    );
  }
}
