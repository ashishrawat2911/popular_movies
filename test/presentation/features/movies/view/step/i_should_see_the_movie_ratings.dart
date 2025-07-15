import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see the movie ratings
Future<void> iShouldSeeTheMovieRatings(WidgetTester tester) async {

  expect(find.text("Ratings: 5.5"), findsOneWidget);

}
