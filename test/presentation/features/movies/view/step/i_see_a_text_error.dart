import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';

/// Usage: I see a Text error
Future<void> iSeeATextError(WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      home: const MoviesScreen(),
    ),
  );
  await tester.pumpAndSettle();

  expect(find.text("Failed to fetch movies"), findsOneWidget);
}
