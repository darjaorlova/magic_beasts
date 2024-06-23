import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:magic_beasts_lints/lints/firebase_analytics_event_length_rule.dart';

PluginBase createPlugin() => _MagicBeastsLinter();

class _MagicBeastsLinter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        FirebaseAnalyticsEventLengthRule(),
      ];
}
