Feature: Managing topics
  In order to use Grapevine
  As a user
  I want to be able to start and work with topics

  Scenario: Start a new topic
    Given I have an existing category
    When I am on "/topics/create?category=existing-category"
    Then I should see "Create new topic in Existing Category"

    When I fill in "title" with "my new topic"
    And I fill in "body" with "my topic's awesome stuff"
    And I press "Create"
    Then I should be on "/category/existing-category"
    And I should see "my new topic"
