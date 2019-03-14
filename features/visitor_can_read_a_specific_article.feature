Feature: Visitor can read a specific article
	As a Visitor
	In order to read an article
	I would like to be able to click on an article and have it displayed on a separate page

	Background:
		Given the following articles exist
			| title                                          | content                                                      | image																																		|
			| The Hub News is the site of the moment         | Great articles! This site's popularity is raising so quick!  |	https://cdn.pixabay.com/photo/2016/11/29/04/19/beach-1867285__340.jpg		|
			| Spring hasn't arrived in Sweden yet            | Ice can be still spotted on the street, watch out!           | https://cdn.pixabay.com/photo/2016/11/29/04/19/beach-1867285__340.jpg   |

	Scenario: Visitor can read a specific article
		Given I visit the "landing" page
		Then I should see "Great articles! This site's popularity is raising so quick!" for "The Hub News is the site of the moment"
		And I should see "Ice can be still spotted on the street, watch out!" for "Spring hasn't arrived in Sweden yet"
		And I click on "The Hub News is the site of the moment"
		Then I should see "Great articles! This site's popularity is raising so quick!"
		And I should see an article image
		But I should not see "Ice can be still spotted on the street, watch out!"