current_directory = File.expand_path(File.dirname(__FILE__))
require current_directory + "/../test_helper"

class Regression < MiniTest::Test
  include Common::JiraHelper
  
  def setup
    @config = Data.config.setup
    @jirasite = "http://musashi.atlassian.net/"
    @user = "kfajardo"
    @password = "123qwe"
    
    @driver = Selenium::WebDriver.for @config["test_browser"].to_sym
    @driver.get(@jirasite + "/")    
  end

  def teardown
    @driver.quit
  end

  def test_fillup
    wait = Selenium::WebDriver::Wait.new(:timeout => 120)    
    @driver.manage().window().maximize()
    login(@driver, @user, @password)
    
    sprint = "Sprint 11 v0.1.7-b3"
    update_tickets = [  
      {number:"GAMMA-579", result:"Result-OK", message:""},
      {number:"GAMMA-580", result:"Result-OK", message:""},
      {number:"GAMMA-755", result:"Result-NT", message:"time constraints"},
      {number:"GAMMA-244", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-245", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-491", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-492", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-493", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-494", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-447", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-448", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-495", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-496", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-497", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-498", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-373", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-374", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-209", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-257", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-449", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-450", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-451", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-452", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-453", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-454", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-455", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-456", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-457", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-458", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-459", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-460", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-461", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-462", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-463", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-464", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-465", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-466", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-467", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-468", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-469", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-470", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-210", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-258", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-211", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-259", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-253", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-262", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-254", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-263", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-255", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-264", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-256", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-265", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-213", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-266", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-214", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-267", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-500", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-501", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-471", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-472", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-473", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-474", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-475", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-476", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-477", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-478", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-479", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-480", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-481", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-482", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-502", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-503", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-483", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-484", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-485", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-486", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-487", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-488", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-489", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-490", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-173", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-269", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-174", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-270", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-273", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-278", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-275", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-279", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-276", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-280", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-277", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-281", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-176", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-284", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-177", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-285", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-375", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-376", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-377", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-378", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-379", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-380", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-381", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-382", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-383", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-384", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-385", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-386", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-387", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-388", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-389", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-390", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-391", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-392", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-393", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-394", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-395", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-396", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-397", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-398", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-399", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-400", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-401", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-402", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-431", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-435", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-432", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-436", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-433", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-437", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-434", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-438", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-439", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-441", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-440", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-442", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-425", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-427", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-426", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-428", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-421", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-423", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-422", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-424", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-429", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-430", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-445", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-446", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-415", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-418", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-416", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-419", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-417", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-420", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-622", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-623", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-403", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-404", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-405", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-406", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-407", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-408", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-409", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-410", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-411", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-413", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-412", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
      {number:"GAMMA-414", result:"Result-CNT", message:"DELTA-517, DELTA-525, other related issues"},
    ]
    
    if update_tickets.length > 0 then
      update_tickets.each do |ticket|
        # browse to the ticket
        @driver.get(@jirasite + "browse/" + ticket[:number])
        sleep 3
        # if adding fix version and removing the old result label
        # edit_addfixversion_removeoldresultlabel(@driver, fixversion)
        
        # just removing old result label
        edit_removeresultlabel(@driver)

        # comment on ticket
        addcomment(@driver, ticket[:result], sprint, ticket[:message])
        sleep 3
        edit_addresultlabel(@driver, ticket[:result])
        
        sleep 2
        puts "Done updating" + ticket[:number]
      end
    end
  end  
end