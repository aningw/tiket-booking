class Homepage < SitePrism::Page
  set_url 'https://www.tiket.com/login'

  element   :username_field,    :xpath,"//*[@name="username"]"
  element   :lanjutkan_button,  :xpath,"//*[contains(text(),"Lanjutkan")]"
  element   :password_field,    :xpath,"//*[@name="password"]"
  element   :lanjutkan_button,  :xpath,"//*[contains(text(),"Log in")]"
  element   :login_button,      '.loginSubmitButton'
end