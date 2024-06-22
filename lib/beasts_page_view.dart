import 'package:flutter/material.dart';
import 'package:magic_beasts/aqualis_view.dart';
import 'package:magic_beasts/ignisphinx_view.dart';
import 'package:magic_beasts/luminara_view.dart';
import 'package:magic_beasts/shadowfelis_view.dart';
import 'package:magic_beasts/zephyra_view.dart';

class BeastsPageView extends StatefulWidget {
  const BeastsPageView({super.key});

  @override
  State<BeastsPageView> createState() => _BeastsPageViewState();
}

// TODO ask about this issue
// ignore: prefer-declaring-const-constructor
class _BeastsPageViewState extends State<BeastsPageView> {
  
  @override
  void initState() {
    super.initState();
    debugPrint('Bad code, called before super.initState() 🐛');
    // super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView(
          children: const [
            ShadowfelisView(),
            ZephyraView(),
            AqualisView(),
            LuminaraView(),
            IgnisphinxView(),
          ],
        ),
      );
}
