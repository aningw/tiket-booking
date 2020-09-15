@tes2
Feature: Train reservation

  Scenario: train reservation one way trip with x adult and x infant
    Given user visit tiket.com
    And user login in tiket using email
    When user visit train reservation
    And user input depature city
    And user input destination city
    And user input depature date
    And user input "JUMLAH_DEWASA" adult "JUMLAH_BAYI" infant
    And user click search
    And user use filter eksekutif
    And user choose one of train schedule
    


    