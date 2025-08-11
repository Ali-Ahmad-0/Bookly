import 'package:bookly/core/utils/models/book_model/book_model.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          backgroundColor: Colors.white,
          radius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          texts: 'Free',
          txtcolor: Colors.black,
        ),
        CustomButton(
          onPressed: () async {
             Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);

            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },

          backgroundColor: Color(0xffEF8262),
          radius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          texts: 'Preview',
          txtcolor: Colors.white,
        ),
      ],
    );
  }
}
