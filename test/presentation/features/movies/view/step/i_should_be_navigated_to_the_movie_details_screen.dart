import 'package:flutter_test/flutter_test.dart';
import 'package:popular_movies/presentation/features/movie_detail/view/movie_details_screen.dart';

/// Usage: I should be navigated to the Movie Details Screen
Future<void> iShouldBeNavigatedToTheMovieDetailsScreen(
    WidgetTester tester) async {
  expect(find.byType(MoviesDetailScreen), findsOneWidget);
}
