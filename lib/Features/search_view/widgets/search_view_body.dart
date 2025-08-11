import 'package:bookly/Features/search_view/data/repos/manager/searched_books_cubit/searchedbooks_cubit.dart';
import 'package:bookly/Features/search_view/widgets/searchedBooks_listview.dart';
import 'package:bookly/Features/search_view/widgets/custom_search_textField.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextField(
            onSubmitted: (value) {
              BlocProvider.of<SearchedbooksCubit>(
                context,
              ).getSearchedBooks(title: value);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 16),
          child: Text('Searched results', style: Styles.textstyle18),
        ),
        SizedBox(height: 12),
        Expanded(child: SearchedbooksListview()),
      ],
    );
  }
}
