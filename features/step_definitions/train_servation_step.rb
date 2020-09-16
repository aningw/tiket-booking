When(/^user visit train reservation$/)do
  @browser = TrainPage.new
  @browser.load
  expect(@browser).to have_search_train_button
end

And(/^user input depature city$/)do
  @browser.train_from.click
  @browser.select_city_from.click
end

And(/^user input destination city$/)do
  @browser.train_to.click
  @browser.select_city_to.click
end

And(/^user input depature date$/)do
  @browser.search_from_date.click
  @browser.depature_date.click
end

And(/^user input "([^"]*)" adult "([^"]*)"infant$/)do

end