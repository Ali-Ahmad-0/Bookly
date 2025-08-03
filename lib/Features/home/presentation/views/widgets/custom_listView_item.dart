import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 225,

        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/harry-potter-and-the-chamber-of-secrets-6.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
