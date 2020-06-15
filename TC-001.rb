#require_relative 'selenium-webdriver'
require 'selenium-webdriver'
#Selenium::WebDriver::Chrome.driver_path ="C:/Users/willi/Desktop/RubySelenium/RubyTest1/chromedriver.exe"
Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/willi/Desktop/RubySelenium/RubyTest1/chromedriver.exe"


driver = Selenium::WebDriver.for :chrome
driver.get ("https://www.google.com")

element = driver.find_element(name: 'q')
element.send_keys "Hello this is my WebDriver!"
element.submit

puts driver.title

#driver.quit