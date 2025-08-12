import 'package:bookly/core/utils/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewestListViewItem extends StatefulWidget {
  const NewestListViewItem({super.key, this.book});

  final BookModel? book;

  @override
  State<NewestListViewItem> createState() => _NewestListViewItemState();
}

class _NewestListViewItemState extends State<NewestListViewItem> {
  bool isFavorite = false;
  @override
  void initState() {
    isFavorite;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails, extra: widget.book);
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: CustomListViewItem(
                imageUrl:
                    widget.book?.volumeInfo?.imageLinks?.thumbnail ??
                    'https://tse1.mm.bing.net/th/id/OIP.ctLBE7HDwQz10BiYBlcejgHaHR?rs=1&pid=ImgDetMain&o=7&rm=3',
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
                      widget.book?.volumeInfo?.title ?? 'Unkown title',
                      style: Styles.textstyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      widget.book?.volumeInfo?.authors?.join(' & ') ?? '',
                      overflow: TextOverflow.ellipsis,
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
                            child: Text(
                              widget.book?.volumeInfo?.averageRating
                                      .toString() ??
                                  '',
                              style: Styles.textstyle16,
                            ),
                          ),
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              '( ${widget.book?.volumeInfo?.ratingCount.toString()} )',
                              style: Styles.textstyle14.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                     
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
