import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:google_fonts/google_fonts.dart';

class AppCodeTheme {
  AppCodeTheme._();
  static const Color backgroundColor = Colors.transparent;
  static const Color primaryColor = Color(0xffa277ff);
  static const Color secondaryColor = Color(0xff61ffca);
  static const Color quinaryColor = Color(0xff82e2ff);
  static const Color quaternaryColor = Color(0xfff694ff);
  static const Color comments = Color(0xff90A1B9);
}

final SyntaxTheme myCustomTheme = SyntaxTheme.standard().copyWith(
  backgroundColor: AppCodeTheme.backgroundColor,
//commentStyle: const TextStyle(),
  commentStyle: GoogleFonts.firaCode(color: AppCodeTheme.comments),
  stringStyle: GoogleFonts.firaCode(color: AppCodeTheme.secondaryColor),
  baseStyle: GoogleFonts.firaCode(color: AppCodeTheme.quaternaryColor),
  keywordStyle: GoogleFonts.firaCode(color: AppCodeTheme.primaryColor),
  punctuationStyle: GoogleFonts.firaCode(color: AppCodeTheme.primaryColor),
  classStyle: GoogleFonts.firaCode(color: AppCodeTheme.quinaryColor),
  constantStyle: GoogleFonts.firaCode(color: AppCodeTheme.quinaryColor),
  numberStyle: GoogleFonts.firaCode(color: AppCodeTheme.secondaryColor),
);
