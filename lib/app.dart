import 'package:flutter/material.dart';
import 'package:lodgify/ui/accordion_page.dart';
import 'package:lodgify/ui/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logdify',
      theme: lodgifyTheme,
      home: const AccordionPage(),
    );
  }
}
