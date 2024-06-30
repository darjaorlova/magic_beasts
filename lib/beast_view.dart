import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:magic_beasts/firebase_analytics.dart';

class BeastView extends StatelessWidget {
  const BeastView({
    required this.name,
    required this.description,
    required this.beastImage,
    required this.backgroundImage,
    required this.backgroundSemanticLabel,
    super.key,
  });

  final String name;
  final String description;
  final String beastImage;
  final String backgroundImage;
  final String backgroundSemanticLabel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var maxH = size.height;
    var maxW = size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              backgroundImage,
              fit: BoxFit.cover,
              semanticLabel: backgroundSemanticLabel,
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
              transform: Matrix4.translationValues(130, 240, 0),
              child: OverflowBox(
                maxHeight: maxH * 2,
                maxWidth: maxW * 2,
                child: Image.asset(
                  beastImage,
                  height: maxH * 0.85,
                  fit: BoxFit.contain,
                  semanticLabel: name,
                )
                    .animate()
                    .fadeIn(duration: 1000.ms, curve: Curves.easeIn)
                    .move(
                      duration: 1000.ms,
                      curve: Curves.easeIn,
                      begin: const Offset(100, 20),
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
                  Text(
                    name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color(0xFFECE8D7),
                      fontSize: 44,
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
                  ).animate().fadeIn(duration: 1000.ms, curve: Curves.easeIn),
                  Text(
                    description,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color(0xFFECE8D7),
                      fontSize: 18,
                      height: 1.1,
                      fontFamily: 'Almendra',
                    ),
                  ).animate().fadeIn(duration: 1000.ms, curve: Curves.easeIn),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32, right: 32),
              child: FloatingActionButton(
                onPressed: () {
                  FirebaseAnalytics.logEvent('share_beast_event_triggered_by_user_in_app');
                },
                backgroundColor: const Color(0xFFECE8D7),
                child: const Icon(
                  Icons.share_outlined,
                  color: Color(0xFF060B10),
                ),
              ).animate().fadeIn(duration: 1000.ms, curve: Curves.easeIn),
            ),
          ),
        ],
      ),
    );
  }
}
