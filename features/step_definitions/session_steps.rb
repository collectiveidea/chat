When /^I am in (.*) browser$/ do |name|
  Capybara.session_name = name
end

When /^(?!I am in)(.*(?= in)) in (.*) browser$/ do |step, name|
  When %(I am in #{name} browser)
  And step
end
