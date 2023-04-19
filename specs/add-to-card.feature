Feature: Add to cart
  as a user i want to be able to add products
  to the cart, so that I can buy them.

  Scenario: Adding "1" "Bordslampa" to the cart
    Given that I am on the start page
    And that I have searched for "Bordslampa"
    When I click the buy button "1" time
    Then "1" "Bordslampa" should be added to the cart

  Scenario: Adding "2" "Bordslampa" to the cart
    Given that I am on the start page
    And that I have searched for "Bordslampa"
    When I click the buy button "2" time
    Then "2" "Bordslampa" should be added to the cart

  Scenario: Adding "3" "Golvlampa" to the cart
    Given that I am on the start page
    And that I have searched for "Golvlampa"
    When I click the buy button "3" time
    Then "3" "Golvlampa" should be added to the cart