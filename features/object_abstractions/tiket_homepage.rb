class Homepage < SitePrism::Page
  set_url 'https://www.tiket.com/'

  element   :login_button, :xpath,"//*[text()="Login"]"
end