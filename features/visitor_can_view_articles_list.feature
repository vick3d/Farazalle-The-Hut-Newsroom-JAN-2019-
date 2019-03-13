Feature: Visitor can view all listed articles
    As a Visitor
    In order to choose an article to read
    I would like to be able to see the articles listed on a page

    Background: 
        Given the following articles exist
        | title                                          | content                                                                                                                                                                                     |
        | The Hub News is the site of the moment         | Great articles! This site's popularity is raising so quick!                                                                                                                                 |
        | Spring hasn't arrived in Sweden yet            | Ice can be still spotted on the street, watch out!                                                                                                                                          |
        | Eating cinnamon buns increases life expectancy | Researchers are running clinical studies to see the benefits of cinnamon buns consumption. Some state that it might be correlated with an increase in life expectancy, is that really true? |
    
    Scenario: View list of articles on the landing page
        Given I visit the "landing" page
        Then I should see "The Hub News is the site of the moment"
        And I should see "Great articles! This site's popularity is raising so quick!"
        And I should see "Spring hasn't arrived in Sweden yet"
        And I should see "Ice can be still spotted on the street, watch out!"
        And I should see "Eating cinnamon buns increases life expectancy"
        And I should see "Researchers are running clinical studies to see the benefits of cinnamon buns consumption. Some..."
        But I should not see "state that it might be correlated with an increase in life expectancy, is that really true?"