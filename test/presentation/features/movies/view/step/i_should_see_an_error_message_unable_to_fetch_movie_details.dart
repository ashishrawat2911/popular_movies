import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see an error message "Unable to fetch movie details"
Future<void> iShouldSeeAnErrorMessageUnableToFetchMovieDetails(
  WidgetTester tester,
) async {
  expect(find.text("Failed to fetch movie"), findsOneWidget);
}
