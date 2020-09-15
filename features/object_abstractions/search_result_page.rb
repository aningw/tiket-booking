class SearchResultPage < SitePrism::Page
  set_url 'https://www.tiket.com/'

  element   :info_box, '.comp-info-box'
  element   :mengerti_button_info, '.v3-btn.v3-btn__blue.list-horizontal__middle.btn-action'
  element   :satu_transit,            :xpath,"//*[text()='1 Transit']"
  element   :dua_transit,             :xpath,"//*[text()='2+ Transit']"
  element   :first_result,            :xpath,"(//*[@class='wrapper-flight-list'])[1]"
  element   :pilih_button,            :xpath,"(//*[@class='btn-book-now'])[1]"
  element   :covid_modal,             :xpath,"//*[@aria-label='Modal Message']"
  element   :close_covid_modal,       :xpath,"//*[@aria-label='Close Message']"
  element   :switch_detail_same,      :xpath,"(//*[@class='switch'])[1]"
  element   :kewarganegaraan_box,     :xpath,"(//*[@class='input-flight-dropdown-searchbox'])[1]"
  element   :negara_list_box, '.list-menu.list-menu-flight-dropdown-searchbox'
  element   :negara_data,             :xpath,"(//*[@class='list-data'])[1]"
  element   :lanjut_pembayaran_button,:xpath,"//*[text()='LANJUTKAN KE PEMBAYARAN']"
  element   :payment_confirm_box, '.content-notification'
  element   :yes_confirm_button,      :xpath,"//*[text()='YA, LANJUTKAN']"
  element   :order_id,                :xpath,"//*[text()='Order ID']"
  element   :payment_method,          :xpath,"(//*[@class='method-type-name'])[6]"

end
