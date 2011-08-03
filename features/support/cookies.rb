def cookie_jar
  @cookies[Capybara.session_name] ||= ActionDispatch::Cookies::CookieJar.new(Rails.application.config.secret_token)
end

Before do
  @cookies = {}

  ActionDispatch::Request.any_instance.stub(:cookies).and_return{ cookie_jar }
  ActionDispatch::Request.any_instance.stub(:cookie_jar).and_return{ cookie_jar }
end
