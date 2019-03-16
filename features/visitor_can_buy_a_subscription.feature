@javascript
Feature: Visitor can buy a subscription
	As a Visitor
	In order to get access to the best articles
	I would like to be able to buy a subscription

	Background:
		Given I visit the "landing" page
		And I click on "Become a subscriber"

	Scenario: View list of articles on the landing page
		And I should be redirected to the purchase subscription page
		When I fill in the payment form with valid cc credentials
		And I click on "Sign up and Subscribe"
		Then I should see "Welcome! You have signed up successfully."