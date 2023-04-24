Feature: Add to cart
  as a user i want to be able to add products
  to the cart, so that I can buy them.

  Background:
    Given that I am on the start page

  Scenario Outline: Adding "<quantity>" "<product>" to the cart
    Given That I have searched for "<product>"
    When I click the buy button "<quantity>" time
    Then "<quantity>" "<product>" should be added to the cart

    Examples:
      | product    | quantity |
      | Bordslampa | 1        |
      | Bordslampa | 2        |
      | Bordslampa | 3        |
      | Golvlampa  | 1        |
      | Golvlampa  | 2        |


# Scenario: Adding "1" "Bordslampa" to the cart
#  Given that I have searched for "Bordslampa"
#  When I click the buy button "1" time
#  Then "1" "Bordslampa" should be added to the cart

# Scenario: Adding "2" "Bordslampa" to the cart
#  Given that I have searched for "Bordslampa"
#  When I click the buy button "2" time
#  Then "2" "Bordslampa" should be added to the cart

# Scenario: Adding "3" "Golvlampa" to the cart
#  Given that I have searched for "Golvlampa"
#  When I click the buy button "3" time
#  Then "3" "Golvlampa" should be added to the cart