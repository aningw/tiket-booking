class HomePage < SitePrism::Page
  set_url 'https://www.tiket.com/'

  element   :login_button,    :xpath,"//*[text()='Login']"
  element   :pesawat_product,  :xpath,"//*[@class='product-box'][1]"
  element   :train_product,  :xpath,"//*[@class='product-box'][3]"
  element   :round_trip_radio, :xpath, "(//*[@class='radio v3'])[2]"
  element   :search_from, '#productSearchFrom'
  element   :search_to, '#productSearchTo'
  element   :search_depature_date, '#productSearchDeparture'
  element   :search_return_date, '#productSearchReturn'
  element   :cari_button, :xpath,"//*[@id='productWidget']/div[2]/div[3]/button"
  element   :from_dropdown_list, '#fromDropDownList-airport1'
  element   :to_dropdown_list,'#toDropDownList-airport4'
  element   :date_box, '.DayPicker_transitionContainer__horizontal_2'
  element   :exit_box, :xpath, "(//*[@class='widget-drop-down-close-btn'])[3]"
  element   :depature_date, :xpath,"(//*[@class='CalendarDay CalendarDay_1 CalendarDay__default CalendarDay__default_2'])[1]"
  element   :return_date, :xpath,"(//*[@class='CalendarDay CalendarDay_1 CalendarDay__default CalendarDay__default_2'])[2]"
  element   :selesai_button, :xpath,"//*[text()='SELESAI']"


end
