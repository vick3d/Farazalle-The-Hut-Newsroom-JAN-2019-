Given("the following articles exist") do |table|
	table.hashes.each do |article|
		create(:article, article)
	end
end

When("I visit the {string} page") do |page_name|
	page = page_name == 'landing' ? root_path : page_name
	visit page
end

Given("I click on {string}") do |link|
	click_on link
end

Given("I fill in {string} with {string}") do |element, value|
	fill_in element, with: value
end

And("I should be redirected to the purchase subscription page") do
	expect(current_path).to eq new_user_registration_path
end