Feature: Merge Articles
  As an admin
  In order to consolidate similar articles
  I want to be able to merge articles I deem to be similar

  Scenario: Non-admin trying to merge article
    Given the blog is set up
    And I am reading an article
    Then I should not see "Merge"

  Scenario: Admin trying to merge article
    Given the blog is set up
    And I am logged into the admin panel
    And I am reading an article
    And I fill in "1" for "merge_with"
    And I press "Merge"
    Then I should be on the home page