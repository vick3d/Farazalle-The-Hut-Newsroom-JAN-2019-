Feature: Visitor can register for an account

   As a Visitor,
   In order to access unique features on the news app,
   I would like to be able to register for an account on the site.

   Scenario:
      Given I visit the landing page
      And I click on "Become a subscriber"
      And I fill in "Email" with "person@mail.com"
      And I fill in "Password" with "12345678"
      And I fill in "Password confirmation" with "12345678"
      And I click on "Sign up"
      Then I should see "Welcome! You have signed up successfully."
