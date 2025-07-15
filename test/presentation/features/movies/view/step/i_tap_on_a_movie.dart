import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';

/// Usage: I tap on a movie
Future<void> iTapOnAMovie(WidgetTester tester) async {
  await tester.tap(find.text("Title 1"));
  await tester.pumpAndSettle();
}
