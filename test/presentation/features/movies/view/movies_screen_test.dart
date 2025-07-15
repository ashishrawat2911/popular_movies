// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/i_am_on_the_movie_screen.dart';
import './step/i_prepare_mock_data_for_movies.dart';
import './step/i_see_a_list_of_movies.dart';
import './step/i_prepare_mock_data_for_movies_with_an_error.dart';
import './step/i_see_a_text_error.dart';
import './step/i_tap_on_a_movie.dart';
import './step/i_should_be_navigated_to_the_movie_details_screen.dart';

void main() {
  group('''Movies Screen''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await iAmOnTheMovieScreen(tester);
    }

    testWidgets('''Screen should display a list of Movies''', (tester) async {
      await bddSetUp(tester);
      await iPrepareMockDataForMovies(tester);
      await iSeeAListOfMovies(tester);
    });
    testWidgets(
        '''Screen should display an error message when the backend fails''',
        (tester) async {
      await bddSetUp(tester);
      await iPrepareMockDataForMoviesWithAnError(tester);
      await iSeeATextError(tester);
    });
    testWidgets('''Navigate to movie details screen''', (tester) async {
      await bddSetUp(tester);
      await iPrepareMockDataForMovies(tester);
      await iTapOnAMovie(tester);
      await iShouldBeNavigatedToTheMovieDetailsScreen(tester);
    });
  });
}
