import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listView_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        FeaturedLIstView(),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 32, bottom: 32),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Text('Best seller ', style: Styles.textMedium),
          ),
        ),
      ],
    );
  }
}
