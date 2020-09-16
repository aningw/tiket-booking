@tes1
Feature: flight transaction

  Scenario: login user create transaction of domestic round trip flight with xx transit 
    Given user visit tiket.com
    And user login in tiket using email
    And user is on homepage
    When user click pesawat category
    And user click pulang-pergi radio button
    And user input dari column
    And user input ke column
    And user click cari pernerbangan
    And user click filter transit with "1" transit
    And user click pilih on one of flight
    And user turn on toggle sama dengan pemesan
    And user choose kewarganegaraan
    And user click lanjutkan ke pembayaran
    And user choose payment method
    And user click lanjutkan
    Then transaction created
    And user logout
   
