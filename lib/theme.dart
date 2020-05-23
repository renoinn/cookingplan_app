import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//final primaryColor = const Color(0xFF1E2640);
//final secondaryColor = const Color(0xFF922C40);
//final accentColor = const Color(0xFFDC9750);
//final backgroundColor = const Color(0xFFF3EAC0);

final primaryColor = const Color(0xFF15B5B0);
final secondaryColor = const Color(0xFFF9BDC0);
final accentColor = const Color(0xFFFBE698);
final backgroundColor = const Color(0xFFFFFFFF);
final textColor = const Color(0xFF121212);

final ColorScheme colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primaryColor,
  primaryVariant: primaryColor,
  secondary: secondaryColor,
  secondaryVariant: secondaryColor,
  background: backgroundColor,
  surface: backgroundColor,
  onBackground: textColor,
  onSurface: textColor,
  onError: Colors.white,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  error: Colors.red.shade400
);
final TextTheme textTheme = GoogleFonts.mPlus1pTextTheme();
final ThemeData lightTheme = ThemeData.from(colorScheme: colorScheme, textTheme: textTheme);
//final ThemeData lightTheme = ThemeData.light().copyWith(
//  cardColor: Colors.white,
//  dividerColor: Colors.grey[300],
//  backgroundColor: Colors.white,
//  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
//  primaryColor:  const Color(0xFFFABE00),
//  primaryColorLight: const Color(0xFFFFDC22),
//  accentColor:  const Color(0xFF343A40),
//  primaryIconTheme: ThemeData.light().primaryIconTheme.copyWith(color: Colors.black),
//  textTheme: GoogleFonts.mPlus1pTextTheme(),
//  primaryTextTheme: GoogleFonts.mPlus1pTextTheme(),
//  unselectedWidgetColor: Colors.grey[600]
//);