

Given(/^I am a guest$/) do
  
end

When(/^I visit the admin page$/) do
  visit admin_url
end

Then(/^I should be redirected to the root_url$/) do
  redirect_to root_url
end