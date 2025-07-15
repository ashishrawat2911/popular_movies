// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/i_am_on_the_movie_details_screen.dart';
import './step/the_movie_details_are_loaded_successfully.dart';
import './step/i_should_see_the_movie_title.dart';
import './step/i_should_see_the_movie_ratings.dart';
import './step/i_should_see_the_movie_overview.dart';
import './step/i_should_see_the_movie_videos.dart';
import './step/there_is_an_error_loading_the_movie_details.dart';
import './step/i_should_see_an_error_message_unable_to_fetch_movie_details.dart';

void main() {
  group('''Movie Details Screen''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await iAmOnTheMovieDetailsScreen(tester);
    }

    testWidgets('''Display movie details''', (tester) async {
      await bddSetUp(tester);
      await theMovieDetailsAreLoadedSuccessfully(tester);
      await iShouldSeeTheMovieTitle(tester);
      await iShouldSeeTheMovieRatings(tester);
      await iShouldSeeTheMovieOverview(tester);
      await iShouldSeeTheMovieVideos(tester);
    });
    testWidgets('''Handle error while loading movie details''', (tester) async {
      await bddSetUp(tester);
      await thereIsAnErrorLoadingTheMovieDetails(tester);
      await iShouldSeeAnErrorMessageUnableToFetchMovieDetails(tester);
    });
  });
}
