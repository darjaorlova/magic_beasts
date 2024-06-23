import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class FirebaseAnalyticsEventLengthRule extends DartLintRule {
  const FirebaseAnalyticsEventLengthRule() : super(code: _code);

  static const _code = LintCode(
    name: 'firebase_analytics_event_length',
    problemMessage: 'Firebase Analytics max event name length is 40 chars.',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    print('test more');
    context.registry.addMethodInvocation((node) {
      if (node.methodName.name == 'logEvent' &&
          node.argumentList.arguments.isNotEmpty) {
        final eventName = node.argumentList.arguments.first;
        // 40 chars + 2 quotes
        if (eventName.length > 42) {
          // using `atNode/atOffset` triggers errors in `custom_lint.log`
          reporter.reportErrorForOffset(
            _code,
            node.argumentList.arguments.first.sourceRange.offset,
            eventName.length,
          );
        }
      } else {}
    });
  }

  @override
  List<Fix> getFixes() => [_TrimParamNameFix()];
}

class _TrimParamNameFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    context.registry.addMethodInvocation((node) {
      if (!analysisError.sourceRange.intersects(node.sourceRange) ||
          node.methodName.name != 'logEvent') {
        return;
      }
      final changeBuilder = reporter.createChangeBuilder(
        message: 'Trim the event name to 40 chars',
        priority: 1,
      );
      final eventName = node.argumentList.arguments.first;
      changeBuilder.addDartFileEdit((builder) {
        builder.addSimpleReplacement(
          eventName.sourceRange,
          "'${eventName.beginToken.lexeme.substring(1, 41)}'",
        );
      });
    });
  }
}
