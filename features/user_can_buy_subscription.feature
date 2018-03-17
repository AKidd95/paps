Feature: User can pay for subscription using credit card
    As a registered user
    In order to access all content
    I would  like to be able to purchase a subscription

  Background:
    Given the following user exists
      | email           | password    |
      | harald@norge.no | OsloOslo123 |
    And I am logged in as "harald@norge.no"

  @javascript
  Scenario: User signs up for a subscription with valid credit card
    Given I am on the create subscription page
    And I click on the "Pay with Card" button
    And I fill in stripe field "Card number" with "4242 4242 4242 4242"
    And I fill in stripe field "CVC" with "123"
    And I fill in stripe field "Expiry" with "11/2022"
    And submit the stripe form
    Then I should see message "Welcome as a subscriber!"
