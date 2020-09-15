class LoginPage < SitePrism::Page
  element   :username_field,    :xpath,"//*[@name='username']"
  element   :lanjutkan_button,  :xpath,"//*[contains(text(),'Lanjutkan')]"
  element   :password_field,    :xpath,"//*[@name='password']"
  element   :login_submit_button,      '.loginSubmitButton'
end
