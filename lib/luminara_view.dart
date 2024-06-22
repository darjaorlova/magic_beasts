import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LuminaraView extends StatefulWidget {
  const LuminaraView({super.key});

  @override
  State<LuminaraView> createState() => _LuminaraViewState();
}

class _LuminaraViewState extends State<LuminaraView> {
  @override
  Widget build(BuildContext context) {
    var maxH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'resources/images/bg_forest_pink.webp',
              fit: BoxFit.cover,
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
              transform: Matrix4.translationValues(130, 240, 0),
              child: OverflowBox(
                maxHeight: 2000,
                maxWidth: 2000,
                child: Image.asset(
                  'resources/images/luminara.png',
                  height: maxH * 0.9,
                  fit: BoxFit.contain,
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
                      begin: const Offset(100, 20),
                      end: const Offset(0, 0),
                    ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 48, right: 16, left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Luminara',
                    textAlign: TextAlign.right,
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
                    'The Luminara is a beacon of light and tranquility in the mystical realms it inhabits. Its presence is said to bring peace and healing to those who encounter it. Legends tell of travelers lost in the dark, enchanted woods who were guided to safety by the gentle glow of a Luminara. Its antlers, inscribed with ancient runes, are believed to possess powerful protective magic, warding off dark spirits and malevolent forces.',
                    textAlign: TextAlign.right,
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
