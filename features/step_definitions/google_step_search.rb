Given(/^I'm on the google home page$/) do
 @b.goto 'http://google.com'
end

When(/^I enter '(.+)' into the search box$/) do |search_term|
	@b.text_field(id:'lst-ib').set search_term
  # binding.pry
end
When(/^I press enter$/) do
 @b.send_keys "\n"
end

Then(/^the first one should contain the word '(.+)'$/) do |search_term|
  expect(@b.h3.text).to include search_term
end
