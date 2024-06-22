flutter clean
flutter pub get
flutter --version
flutter analyze
dcm analyze lib
dcm check-dependencies lib
dcm check-unused-files --monorepo lib
dcm check-unused-code --monorepo lib
dcm check-code-duplication lib
dcm analyze-widgets --show-similarity lib
dart format . --set-exit-if-changed

# Include these commands in Github Action
#dcm check-exports-completeness lib
#dcm check-unused-l10n lib
#dcm check-parameters lib


