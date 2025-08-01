import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          height: 60,
        ).animate().fadeIn(duration: 1.5.seconds, delay: 0.5.seconds),
        SizedBox(height: 18),
        const Text(
              textAlign: TextAlign.center,
              'Read free books easily',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Edu',
                wordSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            )
            .animate()
            .moveY(
              delay: 1.seconds,
              duration: 1.5.seconds,
              curve: Curves.easeInOut,
              begin: 30,
              end: 0,
            )
            .fadeIn(delay: 1.seconds),
      ],
    );
  }
}
