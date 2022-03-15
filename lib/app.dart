import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lodgify/ui/accordion_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logdify',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme:
            GoogleFonts.sourceSansProTextTheme(), // prod: use local assets
      ),
      home: const AccordionPage(),
    );
  }
}
