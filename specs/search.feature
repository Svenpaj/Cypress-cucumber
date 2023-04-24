Feature: Search
  As a user I want to able to search for products
  using the search field.

  Background: Start from home page /
    Given that I am on the starting page

  Scenario: Searching for products including "s"
    Given I enter the letter "s" in the search field
    Then I should see the product "Bordslampa"
    And I should see the product "Spotlight"

  Scenario: Searching for products including "b"
    Given I enter the letter "b" in the search field
    Then I should see the product "Bordslampa"

  Scenario: Searching for products including "Spot"
    Given I enter the word "Spot" in the search field
    Then I should see the product "Spotlight"

  Scenario: Searching for products including "T"
    Given I enter the letter "T" in the search field
    Then I should see the product "Taklampa"
    And I should see the product "Lampett"
    And I should see the product "Spotlight"

  Scenario: Searching for products including "Lam"
    Given I enter the letter "Lam" in the search field
    Then I should see the product "Taklampa"
    And I should see the product "Bordslampa"
    And I should see the product "Golvlampa"
    And I should see the product "Lampett"