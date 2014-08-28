module Common
  module JiraHelper
   
  def login(driver, user, password)
    wait = Selenium::WebDriver::Wait.new(:timeout => 120)
    
    wait.until {  driver.find_element(:id, "username").displayed? }
    driver.find_element(:id, "username").clear
    driver.find_element(:id, "username").send_keys(@user)
    driver.find_element(:id, "password").clear
    driver.find_element(:id, "password").send_keys(@password)
    driver.find_element(:id, "login").click
    
    wait.until { driver.find_element(:id, "create_link").displayed? }
  end
  
  def edit_addfixversion_removeoldresultlabel(driver, fixversion)
    wait = Selenium::WebDriver::Wait.new(:timeout => 120)
    
    wait.until { driver.find_element(:id, "edit-issue").displayed? }
    driver.find_element(:id, "edit-issue").click
    
    wait.until { driver.find_element(:xpath, "//*[@id=\"fixVersions-multi-select\"]/span").displayed? }
    puts " > adding Fix version"
    driver.find_element(:xpath, "//*[@id=\"fixVersions-multi-select\"]/span").click
    
    wait.until { driver.find_element(:link_text, fixversion).displayed? }
    driver.find_element(:link_text, fixversion).click
    sleep 2
    removeResultLabel(driver)
    sleep 2
    puts " > clicking Update button "
    driver.find_element(:xpath, "//input[@value=\"Update\"]").click
    sleep 3
  end
  
  def edit_removeresultlabel(driver)
    wait = Selenium::WebDriver::Wait.new(:timeout => 120)
    
    wait.until { driver.find_element(:id, "edit-issue").displayed? }
    driver.find_element(:id, "edit-issue").click
    
    
    wait.until { driver.find_element(:xpath, "//*[@id=\"fixVersions-multi-select\"]/span").displayed? }
    sleep 2
    removeResultLabel(driver)
    sleep 2
    puts " > clicking Update button "
    driver.find_element(:xpath, "//input[@value=\"Update\"]").click
    sleep 3
  end
  
  def removeResultLabel(driver)
    if (driver.find_elements(:xpath, "//*[@id=\"labels-multi-select\"]/div[@class=\"representation\"]/ul[@class=\"items\"]/li").size) > 0
      sleep 2
      list_number = driver.find_elements(:xpath, "//*[@id=\"labels-multi-select\"]/div[@class=\"representation\"]/ul[@class=\"items\"]/li").size
      counter = list_number
      while (counter>0)
        sleep 1
        if driver.find_element(:xpath, "//*[@id=\"labels-multi-select\"]/div[@class=\"representation\"]/ul[@class=\"items\"]/li[#{ counter }]/button/span/span").text =~ /Result-/
          puts " > removing old Result label"
          driver.find_element(:xpath, "//*[@id=\"labels-multi-select\"]/div[@class=\"representation\"]/ul[@class=\"items\"]/li[#{ counter }]/em").click         
        end
        counter = counter - 1
      end
    end
  end
  
  def addcomment(driver, result, sprint, message="")
    wait = Selenium::WebDriver::Wait.new(:timeout => 120)
    wait.until { driver.find_element(:xpath, "//*[@id=\"comment-issue\"]/span[2]").displayed? }
    driver.find_element(:xpath, "//*[@id=\"comment-issue\"]/span[2]").click
    sleep 2
    driver.find_element(:id, "comment").clear
    if message!=""
      qa_comment = result + " in " + sprint + " due to " + message
    else
      qa_comment = result + " in " + sprint
    end
    puts " > commenting on ticket"
    driver.find_element(:id, "comment").send_keys(qa_comment)
    driver.find_element(:xpath, "//input[@value=\"Add\"]").click
    
  end
  
  def edit_addresultlabel(driver, result)
    wait = Selenium::WebDriver::Wait.new(:timeout => 120)
    
    wait.until { driver.find_element(:id, "edit-issue").displayed? }
    driver.find_element(:id, "edit-issue").click
    
    puts " > adding label for result"
    wait.until { driver.find_element(:xpath, "//div[@id='labels-multi-select']/span").displayed? }
    driver.find_element(:xpath, "//div[@id='labels-multi-select']/span").click
    sleep 3
    wait.until { driver.find_element(:link_text, result).displayed? }
    driver.find_element(:link_text, result).click
    
    driver.find_element(:xpath, "//input[@value=\"Update\"]").click
  end
  
  end
end
