import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see the movie videos
Future<void> iShouldSeeTheMovieVideos(WidgetTester tester) async {
  expect(find.text("Video 1"), findsOneWidget);
}
