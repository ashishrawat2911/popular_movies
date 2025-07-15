import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see the movie overview
Future<void> iShouldSeeTheMovieOverview(WidgetTester tester) async {
  expect(find.text("Overview 1"), findsOneWidget);
}
