Given(/^user visit tiket.com$/)do
  @browser = HomePage.new
  @browser.load
  @browser.wait_until_login_button_visible
  @browser.login_button(wait: 5)
  @browser.login_button.click
end

And(/^user login in tiket using email$/)do
  @browser =LoginPage.new
  sleep 5
  @browser.wait_until_username_field_visible
  @browser.username_field.set(ENV['EMAIL'])
  @browser.lanjutkan_button.click
  @browser.password_field.set(ENV['PASSWORD'])
  @browser.login_submit_button.click
  sleep 20
end

And(/^user is on homepage$/)do
@browser = HomePage.new
@browser.wait_until_pesawat_product_visible
sleep 5
end

When(/^user click pesawat category$/)do
  @browser = HomePage.new
  @browser.pesawat_product.click
  @browser.wait_until_search_from_visible
end

And(/^user click pulang-pergi radio button$/)do
  @browser = HomePage.new
  @browser.round_trip_radio.click
end

And(/user input dari coloumn$/)do
  @browser = HomePage.new
  @browser.search_from.click
  @browser.from_dropdown_list.click
  sleep 2
end

And(/^user input ke coloumn$/)do
  @browser = HomePage.new
  @browser.search_to.click
  @browser.to_dropdown_list.click
  sleep 2
end

And(/^user click cari pernerbangan$/)do
  @browser = HomePage.new
  if page.has_css?('.DayPicker_transitionContainer__horizontal_2')
    @browser.depature_date.click
    @browser.return_date.click
    @browser.wait_until_selesai_button_visible
  else
    @browser.search_depature_date.click
    @browser.return_date.click
    @browser.wait_until_selesai_button_visible
  end
  @browser.selesai_button.click
  @browser.cari_button.click
  sleep 5
end


And(/^user click filter transit with "([^"]*)" transit$/)do |transit|
  @browser = SearchResultPage.new
  if page.has_css?('.comp-info-box')
    @browser.mengerti_button_info.click
  end
  sleep 3
  if page.has_xpath?('//*[@aria-label="Modal Message"]')
    @browser.close_covid_modal.click
  end
  if transit == '1'
    @browser.satu_transit.click
  else
    @browser.dua_transit.click
  end
  sleep 5
end

And(/^user click pilih on one of flight$/)do
  @browser = SearchResultPage.new
  @browser.wait_until_first_result_visible
  @browser.pilih_button.click
  if page.has_xpath?('//*[@aria-label="Modal Message"]')
    @browser.close_covid_modal.click
  end
  @browser.pilih_button.click
  
end

And(/^user turn on toggle sama dengan pemesan$/)do
  sleep 20
  @browser.switch_detail_same.click
  sleep 5
end

And(/^user choose kewarganegaraan$/)do
  @browser.kewarganegaraan_box.click
  @browser.wait_until_negara_list_box_visible
  @browser.negara_data.click
end

And(/^user click lanjutkan ke pembayaran$/)do
  @browser.lanjut_pembayaran_button.click
  sleep 5
  @browser.wait_until_payment_confirm_box_visible
  @browser.yes_confirm_button.click
  sleep 20
end

And(/^user choose payment method$/)do
  @browser.payment_method.click
  sleep 3
end

And(/^user click lanjutkan$/)do
  @browser.lanjut_pembayaran_button.click
  @browser.wait_until_payment_confirm_box_visible
  @browser.payment_confirm_box.click
  sleep 10
end

Then(/^transaction created$/)do
  expect(@browser).to have_order_id
end


