import 'package:bookly/Features/home/presentation/views/widgets/action_button.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_bookDetails_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_featured_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: CustomScrollView(
        
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 28),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: CustomListViewItem(),
                ),
                SizedBox(height: 43),
                Text('The Jungle Book', style: Styles.textstyle30),
                SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textstyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow,
                      size: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('4.5', style: Styles.textstyle16),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        '( 234 )',
                        style: Styles.textstyle14.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ActionButton(),
                Expanded(child: SizedBox(height: 50)),
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
                SimilareatureListView(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
