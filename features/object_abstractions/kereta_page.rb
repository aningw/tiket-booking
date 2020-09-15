class KeretaPage< SitePrism::Page
  set_url 'https://www.tiket.com/kereta-api'

  element   :train_from,          '.part-depart'
  element   :train_to,            '.part-return'
  element   :select_city_from,    :xpath,"(//*[@class='city'])[1]"
  element   :select_city_to,      :xpath,"(//*[@class='city'])[2]"
  element   :search_from_date,    '.part-from-date'
  element   :search_to_date,      '.part-from-date'
  element   :depature_date,       :xpath,"(//*[@class='CalendarDay CalendarDay_1 CalendarDay__default CalendarDay__default_2'])[1]"
  element   :penumpang_pop_up,    '.passenger-action-box'
  element   :increase_btn_adult,  :xpath,"(//*[@class='tix tix-plus icon'])[1]"
  element   :increase_btn_infannt,:xpath,"(//*[@class='tix tix-plus icon'])[2]"
  element   :selesai_button,      :xpath,"//*[text()='SELESAI']"
  element   :selesai_button,      :xpath,"//*[text()='Cari Kereta Api']"

end