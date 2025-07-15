import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';

/// Usage: I see a list of Movies
Future<void> iSeeAListOfMovies(WidgetTester tester) async {

  expect(find.text("Title 1"), findsOneWidget);
  expect(find.text("Title 2"), findsOneWidget);
}
