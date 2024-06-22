import 'package:flutter/material.dart';
import 'package:magic_beasts/beasts_page_view.dart';

void main() {
  runApp(const MagicBeastsApp());
}

class MagicBeastsApp extends StatelessWidget {
  const MagicBeastsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Magic Beasts',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const BeastsPageView());
  }
}
