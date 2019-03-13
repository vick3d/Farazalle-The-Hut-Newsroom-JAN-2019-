Then("I should see {string}") do |content|
	expect(page).to have_content content
end

Then("I should see {string} for {string}") do |expected_content, title|
    @article = Article.find_by_title(title)
    within("#article_#{@article.id}") do
        expect(page).to have_content expected_content
    end
end

Then("I should not see {string} for {string}") do |expected_content, title|
    @article = Article.find_by_title(title)
    within("#article_#{@article.id}") do
        expect(page).not_to have_content expected_content
    end
end