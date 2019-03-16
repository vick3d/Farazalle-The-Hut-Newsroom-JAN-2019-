@javascript
Feature: Visitor can become a Registered User and a Subscriber at once
	As a Visitor
	In order to get access to the best articles
	I would like to be able to become a Subscriber
	
	Background:
		Given the following articles exist
			| title                                  | category |
			| The Hub News is the site of the moment | tech     |
			| Spring hasn't arrived in Sweden yet    | sports   |

	Scenario: View list of articles on the landing page
		Given I visit the application
		And I click on "Subscribe"
		And I fill in "Name on card" with "Thomas Ochman"
		And I fill in "Email" with "thomas@craft.com"
		And I fill in "Cardnumber" with "4242424242424242"
		And I fill in "Expiry date" with "12/22"
		And I fill in "CVC" with "123"
		And I click on "PAY"
		Then I should see "THANK YOU AND WELCOME!"
		And an email should be sent to "thomas@craft.com"
		And the email should contain a link to account confirmation
		And I should be a subscriber



# And I should be redirected to the purchase subscription page
# When I fill in the payment form with valid cc credentials
# And I click on "Sign up and Subscribe"
# Then I should see "Welcome! You have signed up successfully."