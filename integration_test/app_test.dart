import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_solid_software/main.dart' as app;
import 'package:test_solid_software/view/home_page.dart';
import 'package:test_solid_software/view/widgets/background_color_widget.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('smoke background changing test', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1));

      final homeWidgetFinder = find.byType(HomePage);
      expect(homeWidgetFinder, findsOneWidget);

      final backgroundColorWidgetFinder = find.byType(BackgroundColorWidget);
      expect(backgroundColorWidgetFinder, findsOneWidget);

      final textFinder = find.text('Hey there');
      expect(textFinder, findsNWidgets(2));

      final gestureDetectoreFinder =
          find.byKey(const Key(BackgroundColorWidget.keyName));
      expect(gestureDetectoreFinder, findsOneWidget);

      await tester.tap(gestureDetectoreFinder);
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });
  });
}
