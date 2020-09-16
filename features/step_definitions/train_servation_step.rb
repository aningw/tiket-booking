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

And(/^user input "([^"]*)" adult "([^"]*)"infant$/)do|*penumpang|
  adult   = penumpang[0]
  infant  = penumpang[1]
  adult.times do
    @browser.increase_btn_adult.click
  end
  infant.times do
    @browser.increase_btn_infant.click
  end
  @browser.selesai_button.click
end

And(/^user click search$/)do
  @browser.search_train_button.click
  sleep 10
end

And(/^user use filter eksekutif$/)do
  @browser = SearchResulKeretatPage.new
  if page.has_xpath?('//*[@aria-label="Modal Message"]')
    @browser.close_covid_modal.click
  end 
  sleep 3
  @browser.filter_eksekutif.click
  sleep 10
  expect(@browser).to have_train_result
end

And(/^user choose one of train schedule$/)do
  @browser.select_button.click
  sleep 10
end
