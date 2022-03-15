import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LodgifyColors {
  LodgifyColors._();
  static const Color mint = Color(0xFF00B797);
  static const Color text = Color(0xFF333333);
  static const Color caption = Color(0xFF999999);
  static const Color border = Color(0xFFCCCCCC);
  static final messageInputgrayColor = Colors.grey.shade100;
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

final lodgifyTheme = ThemeData(
  primarySwatch: createMaterialColor(LodgifyColors.mint),
  textTheme: GoogleFonts.sourceSansProTextTheme(
    const TextTheme(
        headline4: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: LodgifyColors.text),
        bodyText1: TextStyle(fontSize: 18, color: LodgifyColors.text),
        bodyText2: TextStyle(fontSize: 16, color: Colors.black),
        caption: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: LodgifyColors.caption)),
  ), // TODO: in prod use local assets
);
