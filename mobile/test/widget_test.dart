import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mo3alemy/main.dart';

void main() {
  testWidgets('boots to the login screen when unauthenticated', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));
    await tester.pumpAndSettle();

    expect(find.text('Log in'), findsOneWidget);
  });
}
