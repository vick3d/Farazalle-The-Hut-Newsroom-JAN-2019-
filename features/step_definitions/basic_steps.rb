Given("the following articles exist") do |table|
    table.hashes.each do |article|
        create(:article, article)
    end
end
  
When("I visit the {string} page") do |page_name|
    page = page_name == 'landing' ? root_path : page_name
    visit page
end