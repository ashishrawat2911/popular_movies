import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see the movie title
Future<void> iShouldSeeTheMovieTitle(WidgetTester tester) async {
  expect(find.text("Title 1"), findsWidgets);
}
