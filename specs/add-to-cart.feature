Feature: Add to cart
  as a user i want to be able to add products
  to the cart, so that I can buy them.

  Background: That I am on the home page
    Given that I am on the start page

  Scenario Outline: Adding "<quantity>" "<product>" to the cart
    When That I have searched for "<product>"
    And I click the buy button "<quantity>" time
    Then "<quantity>" "<product>" should be added to the cart

    Examples:
      | product    | quantity |
      | Bordslampa | 1        |
      | Bordslampa | 2        |
      | Bordslampa | 3        |
      | Golvlampa  | 1        |
      | Golvlampa  | 2        |


  Scenario: Validating the price if its correct for "2" "Golvlampa"
    When That I search for "Golvlampa"
    And Added the product to the cart "2" times
    Then The price should be correct

  Scenario: Validating the price if its correct for "5" "Golvlampor"
    When That I search for "Golvlampa"
    And Added the product to the cart "5" times
    Then The price should be correct

  Scenario: Validating the price if its correct for "2" "Spotlights"
    When That I search for "Spotlight"
    And Added the product to the cart "2" times
    Then The price should be correct

  Scenario: Validating the price if its correct for "5" "Taklampor"
    When That I search for "Taklampa"
    And Added the product to the cart "5" times
    Then The price should be correct

  Scenario: Validating the price if its correct for "8" "Bordslampor"
    When That I search for "Bordslampa"
    And Added the product to the cart "8" times
    Then The price should be correct