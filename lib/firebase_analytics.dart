import 'package:flutter/foundation.dart';

class FirebaseAnalytics {
  static void logEvent(String name) {
    debugPrint('FirebaseAnalytics: $name');
  }
}
