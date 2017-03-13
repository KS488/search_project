#Hooks frozen_string_literal

browser = Watir::Browser.new :chrome

Before do
  @b=browser
  @b.cookies.clear
end


After do |scenario|
  #execute after each scenario

end

at_exit do
  #After all features have finished running 
  browser.quit
end
