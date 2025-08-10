import 'package:bookly/Features/home/presentation/manager/similar_books/similarbooks_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bestseller_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_featured_listview.dart';
import 'package:bookly/Features/search_view/widgets/custom_search_textField.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String category  = 'programming';
  @override
  void initState() {
    BlocProvider.of<SimilarbooksCubit>(context).getSimilarBooks(category: category);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextField(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 16),
          child: Text('Searched results', style: Styles.textstyle18),
        ),
        SizedBox(height: 12),
        Expanded(child: SimilarFeatureListView()),
      ],
    );
  }
}
