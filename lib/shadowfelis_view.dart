import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ShadowfelisView extends StatefulWidget {
  const ShadowfelisView({super.key});

  @override
  State<ShadowfelisView> createState() => _ShadowfelisViewState();
}

class _ShadowfelisViewState extends State<ShadowfelisView> {
  @override
  Widget build(BuildContext context) {
    final maxH = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: Image.asset('resources/images/bg_forest.webp',
              fit: BoxFit.cover)),
      ClipRRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: SizedBox.expand())),
      Align(
          alignment: Alignment.bottomRight,
          child: Transform(
              transform: Matrix4.translationValues(130, 240, 0),
              child: OverflowBox(
                  maxHeight: 2000,
                  maxWidth: 2000,
                  child: Image.asset('resources/images/shadowfelis.png',
                          height: maxH * 0.9, fit: BoxFit.contain)
                      .animate()
                      .fadeIn(
                          delay: 300.ms,
                          duration: 1000.ms,
                          curve: Curves.easeIn)
                      .move(
                          delay: 300.ms,
                          duration: 1000.ms,
                          curve: Curves.easeIn,
                          begin: Offset(100, 20),
                          end: Offset(0, 0))))),
      Align(
          alignment: Alignment.topRight,
          child: Padding(
              padding: EdgeInsets.only(top: 48, right: 16, left: 32),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text('Shadowfelis',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xFFECE8D7),
                            fontSize: 44,
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
                        delay: 600.ms, duration: 1000.ms, curve: Curves.easeIn),
                Text('The Shadowfelis is a rare and enigmatic magical beast, often found lurking in the depths of ancient, enchanted forests. Resembling a large cat, this creature boasts sleek, mystical fur adorned with dark, shimmering patterns that seem to ripple and change with the light. Its large, hauntingly glowing eyes possess an eerie, otherworldly intelligence, reflecting both wisdom and a hint of mischief.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xFFECE8D7),
                            fontSize: 18,
                            height: 1.1,
                            fontFamily: 'Almendra'))
                    .animate()
                    .fadeIn(
                        delay: 600.ms, duration: 1000.ms, curve: Curves.easeIn)
              ])))
    ]));
  }
}
