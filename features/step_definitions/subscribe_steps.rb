Given("I am on the create subscription page") do
  visit new_subscription_path
end

And(/^I click on the "([^"]*)" button$/) do |button|
  click_button button
  sleep(5)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
end

And(/^I fill in stripe field "([^"]*)" with "([^"]*)"$/) do |field, content|
  within_frame @stripe_iframe do
    fill_in field, with: content
  end
end

And(/^submit the stripe form$/) do
  within_frame @stripe_iframe do
    find('.Section-button').click
  end
  sleep(5)
end
