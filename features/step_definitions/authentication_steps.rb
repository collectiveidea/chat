Given /^I am logged in as "([^"]*)"$/ do |name|
  cookie_jar[:token] = User.find_by_name!(name).token
end
