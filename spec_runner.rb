require "selenium-webdriver"
require "headless"

# Add additional spec runner files here
spec_files = [
    'SpecRunner.html'
]

path = Dir.pwd
fails_text = ''
success = 0

Headless.ly do |headless|

    driver = Selenium::WebDriver.for :firefox
    wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds

    spec_files.each do | file |
        driver.navigate.to "file://" + path.to_s + "/" + file    
        wait.until { driver.find_element(:id => "HTMLReporter") }
        passes = driver.find_elements(:class, 'passed')
        fails = driver.find_elements(:class, 'failed')
        if fails.length > 0
            success = 1 
            # record all failures for output
            fails.each do | element |
                if element.text.length > 0
                    fails_text += element.text + "\n\n"
                end
            end
        end
    end

    driver.quit
end

if success > 0 
    puts fails_text
end

exit success
