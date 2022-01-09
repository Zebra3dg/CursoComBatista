require 'capybara/cucumber'
require 'selenium-webdriver'
# require 'webdrivers'

Capybara.register_driver :selenium_chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => [ "--start-maximized" ]})
  Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 5
end