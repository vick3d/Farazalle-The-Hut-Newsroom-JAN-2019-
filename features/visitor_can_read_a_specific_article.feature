Feature: Visitor can read a specific article
	As a Visitor
	In order to read an article
	I would like to be able to click on an article and have it displayed on a separate page

	Background:
		Given the following articles exist
			| title                                          | content                                                                                    |
			| The Hub News is the site of the moment         | Great articles! This site's popularity is raising so quick!                                |
			| Spring hasn't arrived in Sweden yet            | Ice can be still spotted on the street, watch out!                                         |
			| Eating cinnamon buns increases life expectancy | Researchers are running clinical studies to see the benefits of cinnamon buns consumption. |

	Scenario: Visitor can read a specific article
		Given I visit the "landing" page
		Then I should see "Great articles! This site's popularity is raising so quick!" for "The Hub News is the site of the moment"
		And I click on "Read" for "The Hub News is the site of the moment"
		Then I should see "Great articles! This site's popularity is raising so quick!"