import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class IgnisphinxView extends StatefulWidget {
  const IgnisphinxView({super.key});

  @override
  State<IgnisphinxView> createState() => _IgnisphinxViewState();
}

class _IgnisphinxViewState extends State<IgnisphinxView> {
  @override
  Widget build(BuildContext context) {
    final maxH = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child:
              Image.asset('resources/images/bg_red.webp', fit: BoxFit.cover)),
      ClipRRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: SizedBox.expand())),
      Align(
          alignment: Alignment.bottomLeft,
          child: Transform(
              transform: Matrix4.translationValues(-70, 250, 0),
              child: OverflowBox(
                  maxHeight: 2000,
                  maxWidth: 2000,
                  child: Image.asset('resources/images/ignisphinx.png',
                          height: maxH * 0.75, fit: BoxFit.contain)
                      .animate()
                      .fadeIn(
                          delay: 300.ms,
                          duration: 1000.ms,
                          curve: Curves.easeIn)
                      .move(
                          delay: 300.ms,
                          duration: 1000.ms,
                          curve: Curves.easeIn,
                          begin: Offset(-100, 20),
                          end: Offset(0, 0))))),
      Align(
          alignment: Alignment.topRight,
          child: Padding(
              padding: EdgeInsets.only(top: 48, right: 32, left: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ignisphinx',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xFFECE8D7),
                                fontSize: 48,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'FantasticBeast',
                                shadows: [
                                  Shadow(
                                      color: Color(0xFF060B10),
                                      blurRadius: 20.0,
                                      offset: Offset(5.0, 5.0))
                                ]))
                        .animate()
                        .fadeIn(
                            delay: 600.ms,
                            duration: 1000.ms,
                            curve: Curves.easeIn),
                    Text('The Ignisphinx is a guardian of the enchanted fire realms it inhabits, bringing both awe and fear to those who encounter it. Legends tell of ancient warriors and travelers who were granted protection and strength by the Ignisphinx. Its presence is believed to purify and bless the surrounding lands, making them a source of powerful magic and vitality. Despite its fiery and intimidating appearance, the Ignisphinx is a noble and wise being, often interacting with those who show courage and respect for the elements. The Ignisphinx\'s regal and commanding aura makes it a symbol of power and protection in the magical world.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xFFECE8D7),
                                fontSize: 18,
                                height: 1.1,
                                fontFamily: 'Almendra'))
                        .animate()
                        .fadeIn(
                            delay: 600.ms,
                            duration: 1000.ms,
                            curve: Curves.easeIn)
                  ])))
    ]));
  }
}
