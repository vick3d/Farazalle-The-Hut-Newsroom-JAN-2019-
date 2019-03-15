Feature: Visitor can change language
  As a visitor,
	In order to read the articles in my native language,
	I would like to have the option to change the language to Swedish

	Background:
		Given I visit the "landing" page

	Scenario: View list of articles on the landing page [English]
		When I click on "English"
		Then I should see "Become a subscriber"

	Scenario: View list of articles on the landing page [Swedish]
		When I click on "Svenska"
		Then I should see "Köp en prenumeration"