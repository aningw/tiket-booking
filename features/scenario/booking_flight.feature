@tes1
Feature: flight transaction

  Scenario: login user create transaction of domestic round trip flight with xx transit 
    Given user login in tiket using email
    And user is on homepage
    When user click pesawat category
    And user click pulang-pergi radio button
    And user input dari coloumn
    And user input ke coloumn
    And user input berangkat date
    And user input pulang date
    And user click cari pernerbangan
    And user click filter transit
    And user click pilih on one of flight
    And user turn on toggle sama dengan pemesan
    And user choose kewarganegaraan
    And user click lanjutkan ke pembayaran
    And user click ya lanjutkan on payment confirmation box
    And user click mandiri vitual account as payment method
    When user click lanjutkan
    And user created transaction
