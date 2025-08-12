import 'package:bookly/core/utils/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/action_button.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2,
            ),
            child: CustomListViewItem(
              imageUrl:
                  bookModel.volumeInfo?.imageLinks?.thumbnail ??
                  'https://tse1.mm.bing.net/th/id/OIP.ctLBE7HDwQz10BiYBlcejgHaHR?rs=1&pid=ImgDetMain&o=7&rm=3',
            ),
          ),
          SizedBox(height: 32),
          Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo!.title!,
            style: Styles.textstyle30,
          ),
          SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Text(
              textAlign: TextAlign.center,
              bookModel.volumeInfo!.authors!.join(', '),
              style: Styles.textstyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  bookModel.volumeInfo?.averageRating.toString() ?? '0',
                  style: Styles.textstyle16,
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  bookModel.volumeInfo?.ratingCount.toString() ?? '0',
                  style: Styles.textstyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          ActionButton(bookModel: bookModel),
          Expanded(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}
