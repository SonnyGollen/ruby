require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.get "http://www.amazon.co.uk"
    
ibox = broswer.find_element name: "field-keywords"
    
ibox.send_keys "Eloquent Ruby", :enter
    
booklink = browser.find_element class: "lrg"
    
