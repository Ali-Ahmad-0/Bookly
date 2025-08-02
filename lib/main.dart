import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/conistants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor
      , textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      
      home: SplashView(),
    );
  }
}
