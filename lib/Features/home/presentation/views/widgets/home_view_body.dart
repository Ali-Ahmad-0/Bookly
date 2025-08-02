import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_listview.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: ListView(
            children: [
              FeaturedLIstView(),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 42),
                child: SizedBox(
                  height: 40,
                  child: Text('Best seller', style: Styles.textstyle18),
                ),
              ),

              BestsellerListViewItem(),
            ],
          ),
        ),
      ],
    );
  }
}

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        children: [
          Container(
            height: 160,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/harry-potter-and-the-chamber-of-secrets-6.png',
                ),
              ),
            ),
          ),
          Text(
            textAlign: TextAlign.left,
            'Harry Potter and the Chamber of Secrets',
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.spectral().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
