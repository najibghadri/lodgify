import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lodgify/ui/accordion_page.dart';
import 'package:lodgify/ui/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logdify',
      theme: ThemeData(
        primarySwatch: createMaterialColor(LodgifyColors.mint),
        textTheme: GoogleFonts.sourceSansProTextTheme(const TextTheme(
            headline4: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: LodgifyColors.text),
            bodyText1: TextStyle(fontSize: 18, color: LodgifyColors.text),
            bodyText2: TextStyle(fontSize: 16, color: Colors.black),
            caption: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: LodgifyColors.caption))), // prod: use local assets
      ),
      home: const AccordionPage(),
    );
  }
}
