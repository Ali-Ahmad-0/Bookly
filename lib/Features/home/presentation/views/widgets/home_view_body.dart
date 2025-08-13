import 'package:bookly/Features/home/presentation/manager/features_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bestseller_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),

        Expanded(
          child: LiquidPullToRefresh(
            color: Colors.white,
            animSpeedFactor: 3,
            height: 80,
            onRefresh: () async {
              await Future.delayed(Duration(microseconds: 500));
              BlocProvider.of<NewestBooksCubit>(context).getNewestBooks();
              BlocProvider.of<FeaturedBooksCubit>(context).getFeaturedBooks();
            },
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FeaturedListView(),
                      Padding(
                        padding: EdgeInsets.only(left: 24, top: 55),
                        child: Text('Newest books', style: Styles.textstyle18),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: BestSellerListView(isScrollable: false),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
