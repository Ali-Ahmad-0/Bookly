import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key, this.book});

  final BookModel? book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: CustomListViewItem(
                imageUrl:
                    book?.volumeInfo?.imageLinks?.thumbnail ??
                    'http://books.google.com/books/content?id=O6ts42ywcEoC&printsec=frontcover&img=1&zoom=1&source=gbs_api',
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      textAlign: TextAlign.left,
                      book?.volumeInfo?.title ?? 'Unkown title',
                      style: Styles.textstyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      book?.volumeInfo?.authors?[0] ?? 'Unkown title',
                      style: Styles.textstyle14.copyWith(color: Colors.grey),
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        'Free',

                        style: Styles.textstyle20.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('4.5', style: Styles.textstyle16),
                      ),
                      Text('( 234 )', style: Styles.textstyle14),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
