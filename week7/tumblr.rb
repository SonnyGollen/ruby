require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.get "https://www.tumblr.com/login"
    
email = browser.find_element name: "user[email]"
email.send_keys "sonnygollen@live.com", :enter
    
password = browser.find_element name: "user[password]"
password.send_keys "abc12345", :enter    
    
textlabel = browser.find_element class: "icon_post_text"
textlabel.click
    
title = browser.find_element name: "post[one]"
title.send_keys "Hello World!"
    
wait = Selenium::WebDriver::Wait.new(timeout:10)
wait.methods - Object.new.methods
    
bodytxt = browser.find_element id: "post_two_ifr"
bodytxt.send_keys "How's it going, World?"
    
formbutton = browser.find_element id: "create_post"
formbutton.click