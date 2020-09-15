$LOAD_PATH.unshift File.expand_path('../../object_abstractions', __FILE__)

require "capybara/cucumber"
require "capybara-screenshot/cucumber"
require "capybara/rspec"
require 'faker'
require "selenium-webdriver"
require "rspec/retry"
require "pry"
require "securerandom"
require "yaml"
require "dotenv"
require "site_prism"
require "httparty"
require "uri"
require "net/http"
require "headless"
require "nokogiri"
require "open-uri"
require "filesize"
require "fileutils"
require "net/http/post/multipart"
require "logger"
require "uri"
require "net/ssh"
require 'browsermob/proxy'
require 'logger'
require 'webdrivers'
require 'rotp'
require 'json'
require 'jwt'

Dotenv.load
Dotenv.overload(".env.#{ENV['ENV']}")

browser_name = ENV['BROWSER'] || "chrome"

# Configure Capybara with defaults
Capybara.configure do |config|
  config.default_driver = :selenium
end

# Register Firefox
Capybara.register_driver :selenium do |app|
  options = {
      :js_errors => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

# Register Chrome
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Choose a driver to use
case browser_name.upcase
  when 'CHROME'
    Capybara.default_driver = :selenium_chrome
  when 'FF', 'FIREFOX'
     Capybara.default_driver = :selenium
  else
    raise("Browser '#{browser_name}' is not supported. Use Firefox, Chrome or Headless")
end
