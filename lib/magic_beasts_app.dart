import 'package:flutter/material.dart';
import 'package:magic_beasts/beasts_page_view.dart';

class MagicBeastsApp extends StatelessWidget {
  const MagicBeastsApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Magic Beasts',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const BeastsPageView(),
      );
}
