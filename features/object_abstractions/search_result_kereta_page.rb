class SearchResultKeretaPage < SitePrism::SearchResultKeretaPage
  set url 'https://www.tiket.com/kereta-api/cari'

  element   :covid_modal,             :xpath,"//*[@aria-label='Modal Message']"
  element   :close_covid_modal,       :xpath,"//*[@aria-label='Close Message']"
  element   :filter_eksekutif,        :xpath,"//*[@name='Eksekutif']"
  element   :train_result,            :xpath,"(//*[@class='train-list'])[1]"
  element   :select_button,           :xpath,"(//*[@class='v3-btn v3-btn-yellow tiny-button'])[1]"
  

end