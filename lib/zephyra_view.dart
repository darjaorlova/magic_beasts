import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ZephyraView extends StatelessWidget {
  const ZephyraView({super.key});

  @override
  Widget build(BuildContext context) {
    var maxH = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'resources/images/bg_forest_green.webp',
              fit: BoxFit.cover,
              semanticLabel: 'Green forest background',
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: const SizedBox.expand(),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Transform(
              transform: Matrix4.translationValues(120, 200, 0),
              child: OverflowBox(
                maxHeight: 2000,
                maxWidth: 2000,
                child: Image.asset(
                  'resources/images/zephyra.png',
                  height: maxH * 0.85,
                  fit: BoxFit.contain,
                  semanticLabel: 'Zephyra',
                )
                    .animate()
                    .fadeIn(
                      delay: 300.ms,
                      duration: 1000.ms,
                      curve: Curves.easeIn,
                    )
                    .move(
                      delay: 300.ms,
                      duration: 1000.ms,
                      curve: Curves.easeIn,
                      begin: const Offset(-100, 20),
                      end: Offset.zero,
                    ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 48, right: 32, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Zephyra',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFFECE8D7),
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'FantasticBeast',
                      shadows: [
                        Shadow(
                          color: Color(0xFF060B10),
                          blurRadius: 20,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                  ).animate().fadeIn(
                        delay: 600.ms,
                        duration: 1000.ms,
                        curve: Curves.easeIn,
                      ),
                  const Text(
                    '''
The Zephyra is a guardian of the enchanted skies it inhabits, bringing peace and tranquility to its surroundings. Legends tell of lost travelers and sailors who were guided to safety by the gentle light of a Zephyra. Its presence is believed to purify and bless the skies, making them a source of healing and magic. Despite its mystical appearance, the Zephyra is a gentle and approachable being, often interacting with those who show respect and reverence for the air and its creatures''',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFFECE8D7),
                      fontSize: 18,
                      height: 1.1,
                      fontFamily: 'Almendra',
                    ),
                  ).animate().fadeIn(
                        delay: 600.ms,
                        duration: 1000.ms,
                        curve: Curves.easeIn,
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
