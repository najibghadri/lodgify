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
        primarySwatch: createMaterialColor(const Color(0xFF00B797)),
        textTheme:
            GoogleFonts.sourceSansProTextTheme(), // prod: use local assets
      ),
      home: const AccordionPage(),
    );
  }
}
