import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textstyle18 = TextStyle(
    fontSize: 18,
    // fontWeight: FontWeight.w600,
  );
  static TextStyle textstyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.spectral().fontFamily,
  );
  static const textstyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textstyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textstyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.spectral().fontFamily,
  );
}
