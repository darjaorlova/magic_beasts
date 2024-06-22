import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AqualisView extends StatelessWidget {
  const AqualisView({super.key});

  @override
  Widget build(BuildContext context) {
    var maxH = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'resources/images/bg_underwater.webp',
              fit: BoxFit.cover,
              semanticLabel: 'Underwater background',
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: const SizedBox.expand(),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Transform(
              transform: Matrix4.translationValues(-60, 200, 0),
              child: OverflowBox(
                maxHeight: 2000,
                maxWidth: 2000,
                child: Image.asset(
                  'resources/images/aqualis.png',
                  height: maxH * 0.65,
                  fit: BoxFit.contain,
                  semanticLabel: 'Aqualis',
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
                    'Aqualis',
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
                    """
The Aqualis is a guardian of the enchanted waters it inhabits, bringing peace and tranquility to its surroundings. Legends tell of lost sailors and travelers guided to safety by the gentle glow of an Aqualis. Its presence is believed to purify and bless the waters, making them a source of healing and magic. Despite its mystical appearance, the Aqualis is a gentle and approachable being, often interacting with those who show respect and reverence for the water and its creatures. The Aqualis's serene and calming aura makes it a symbol of hope and guidance in the magical world.""",
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
