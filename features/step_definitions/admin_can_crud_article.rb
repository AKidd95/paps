Given("The following Admin exists") do |table|
  table.hashes.each do |admin_user|
    FactoryBot.create(:admin_user, admin_user)
  end
end

Given("The following Article exists") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article)
  end
end

When("I click dashboard link Articles") do
  click_link("Articles")
end

When("I click admin article page link {string}") do |string|
  click_link(string)
end

Then("I should be on {string} dashboard page") do |string|
  visit new_admin_article_path
end

Then("I fill in field {string} with {string}") do |field, value|
  fill_in(field, with: value)
end

Then("I click article link {string}") do |string|
  click_link_or_button string
end

Then("I should be redirected to article edit page") do
  visit edit_admin_article_path
end