Feature: Managing categories
  In order to use Grapevine
  As a user
  I want to create and manage categories

  Scenario: Create a new category
    Given I am on "/category/create"
    Then I should see "Title"
    And I should see "Description"
    When I fill in "title" with "my new test category"
    And I fill in "description" with "this is my new category"
    And I press "Create"
    Then I should be on "/category"
    And I should see "my new test category"
    When I am on "/category/my-new-test-category"
    Then I should see "No Topics Created Yet"
