Feature:
  As a dev team
  In order to create a safe application
  I would need to setup an authorisation gem


  Background:
    Given following user exist
      | email              | role       | subscriber |
      | author@email.com   | Author     | true       |
      | editor@email.com   | Editor     | true       |
      | visitor@email.com  | Visitor    | true       |
      | visitor1@email.com | visitor    | false      |

  Scenario: Author creates an article
    Given I am logged in as "author@email.com"
    And I visit the create article page
    And I should see "Content"

  Scenario: Editor creates an article
    Given I am logged in as "editor@email.comments"
    And I visit the create article page
    And I should see "Content"

  Scenario: Visitor tries to create and article
    Given I am logged in as "Vistor@email.com"
    And I visit the create article page
    Then I should see message "you are not authorized to do that"
