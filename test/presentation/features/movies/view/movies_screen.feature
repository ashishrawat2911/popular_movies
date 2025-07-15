Feature: Movies Screen

  Background:
    Given I am on the Movie Screen

  Scenario: Screen should display a list of Movies
    When I prepare mock data for movies
    Set up Movies Screen
    Then I see a list of Movies

  Scenario: Screen should display an error message when the backend fails
    When I prepare mock data for movies with an error
    Then I see a Text error

  Scenario: Navigate to movie details screen
      When I prepare mock data for movies
      When I tap on a movie
      Then I should be navigated to the Movie Details Screen

