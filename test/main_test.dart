import 'package:flutter_test/flutter_test.dart';
import 'package:test_solid_software/main.dart';
import 'package:test_solid_software/view/home_page.dart';
import 'package:test_solid_software/view/widgets/background_color_widget.dart';

void main() {
  group('Main App', () {
    testWidgets('Render 1 Home widget, 1 BackgroundColorWidget, 2 widgtes text',
        (WidgetTester tester) async {
      await tester.pumpWidget(const Main());
      final homeWidgetFinder = find.byType(HomePage);
      expect(homeWidgetFinder, findsOneWidget);

      final backgroundColorWidgetFinder = find.byType(BackgroundColorWidget);
      expect(backgroundColorWidgetFinder, findsOneWidget);

      final textFinder = find.text('Hey there');
      expect(textFinder, findsNWidgets(2));
    });
  });
}
