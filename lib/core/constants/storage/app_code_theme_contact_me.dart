import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:google_fonts/google_fonts.dart';

class AppCodeThemeContactMe {
  AppCodeThemeContactMe._();
  static const Color backgroundColor = Colors.transparent;
  static const Color primaryColor = Color(0xffa277ff);
  static const Color secondaryColor = Color(0xff61ffca);
  static const Color quinaryColor = Color(0xff82e2ff);
  static const Color quaternaryColor = Color(0xfff694ff);
  static const Color comments = Color(0xff90A1B9);
}

final SyntaxTheme myCustomTheme = SyntaxTheme.standard().copyWith(
  backgroundColor: AppCodeThemeContactMe.backgroundColor,
  commentStyle: GoogleFonts.firaCode(color: AppCodeThemeContactMe.comments),
  stringStyle:
      GoogleFonts.firaCode(color: AppCodeThemeContactMe.secondaryColor),
  baseStyle: GoogleFonts.firaCode(color: AppCodeThemeContactMe.quaternaryColor),
  keywordStyle: GoogleFonts.firaCode(color: AppCodeThemeContactMe.primaryColor),
  punctuationStyle:
      GoogleFonts.firaCode(color: AppCodeThemeContactMe.primaryColor),
  classStyle: GoogleFonts.firaCode(color: AppCodeThemeContactMe.quinaryColor),
  constantStyle:
      GoogleFonts.firaCode(color: AppCodeThemeContactMe.quinaryColor),
  numberStyle:
      GoogleFonts.firaCode(color: AppCodeThemeContactMe.secondaryColor),
);
