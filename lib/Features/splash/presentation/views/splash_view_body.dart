import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/conistants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    navigateToHome();
  }

  void navigateToHome() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push('/homeView');
    });
  }

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
