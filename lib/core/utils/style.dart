import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static final textstyle18 = TextStyle(
    fontSize: 18,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textstyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: 'sectra',
  );
  static const textstyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textstyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textstyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontFamily: 'sectra',
  );
}
