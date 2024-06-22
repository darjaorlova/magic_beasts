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

class _BeastsPageViewState extends State<BeastsPageView> {
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
