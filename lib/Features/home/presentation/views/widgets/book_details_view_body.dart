import 'package:bookly/Features/home/presentation/views/widgets/custom_bookDetails_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(height: 32),
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: MediaQuery.of(context).size.width * 0.2,
          //   ),
          //   child: Container(
          //     height: 262,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(16),
          //       image: DecorationImage(
          //         fit: BoxFit.fill,
          //         image: AssetImage(
          //           'assets/images/harry-potter-and-the-chamber-of-secrets-6.png',
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2,
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
              style: Styles.textstyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
