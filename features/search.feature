Feature: Search Google
  Must be able to search google

  - Must have a search box to type in
  - Must return a list of results

  Scenario:Search google 
    Given I'm on the google home page
    When I enter 'jacket' into the search box
    And I press enter
    Then the search result summary should contain the word 'jacket'

  Scenario: Search a simple term
    Given I'm on the Google home page
    When I enter 'Echo Dot' into the search box
      And I press enter
    Then the page results should contain the word 'Echo Dot'

