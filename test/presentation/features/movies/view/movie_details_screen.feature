Feature: Movie Details Screen
  Background:
    Given I am on the Movie Details Screen

  Scenario: Display movie details
    When the movie details are loaded successfully
    Then I should see the movie title
    And I should see the movie ratings
    And I should see the movie overview
    And I should see the movie videos

  Scenario: Handle error while loading movie details
    When there is an error loading the movie details
    Then I should see an error message "Unable to fetch movie details"