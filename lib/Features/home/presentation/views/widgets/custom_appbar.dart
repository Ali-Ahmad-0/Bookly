import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 16, right: 18, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          SvgPicture.asset(AssetsData.logo, height: 24),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
