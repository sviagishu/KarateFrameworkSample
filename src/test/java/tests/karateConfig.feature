Feature: Getting name from Karate Config file

  Background: 
    * url baseURL
    * header Accept = 'application/json'

  Scenario: Getting name from Config file
    Given print name

  Scenario: Getting base URL from config file
    Given path 'v2/user/jii'
    When method GET
    Then status 200
    And print response
