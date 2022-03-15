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

class LodgifyConstants {
  LodgifyConstants._();
  static const double sidePadding = 30;
  static const double headerSubtitlePadding = 10;
  static const double defaultRadius = 24;
}

class LodgifyTypography {
  LodgifyTypography._();
  static const subinput = TextStyle(
    fontSize: 13,
    color: Colors.black38,
  );
  static const subtitle = TextStyle(
    fontSize: 16,
    color: Colors.black38,
  );
  static const header2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const appbar = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}

final lodgifyTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light(
    primary: Colors.black38,
    onSecondary: Colors.white,
    secondary: LodgifyColors.mint,
  ),
  textTheme: GoogleFonts.sourceSansProTextTheme(),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    // systemOverlayStyle: lightSystemUiStyle,
    centerTitle: false,
    elevation: 1,
    shadowColor: Colors.black45,
    iconTheme: IconThemeData(color: Colors.black),
  ),
  progressIndicatorTheme:
      const ProgressIndicatorThemeData(color: LodgifyColors.mint),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: LodgifyColors.mint),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: LodgifyColors.mint,
    selectionColor: LodgifyColors.mint.withAlpha(100),
    selectionHandleColor: LodgifyColors.mint,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.black54),
    hintStyle: TextStyle(color: Colors.black38),
    suffixStyle: TextStyle(color: Colors.black38),
    helperMaxLines: 2,
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
        textStyle: const TextStyle(color: LodgifyColors.mint)),
  ),
);

const bottomSheetBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(
    top: Radius.circular(30),
    bottom: Radius.zero,
  ),
);
