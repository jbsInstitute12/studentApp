import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontFamily {
  static final String? popins = GoogleFonts.getFont("Poppins").fontFamily;
  static final TextStyle? normalW600PopinsStyle = TextStyle(
      color: Colors.white, fontFamily: popins, fontWeight: FontWeight.w600);
}
