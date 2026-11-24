import 'package:flutter_test/flutter_test.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('BottomNavigationBar switches tabs', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());

    expect(find.text('Home'), findsWidgets);

    await tester.tap(find.text('Alarm'));
    await tester.pumpAndSettle();

    expect(find.text('Alarm'), findsWidgets);
  });
}
