Feature: PUT call
  
  Scenario: Update the response
    Given url 'https://petstore.swagger.io/v2/user/jii'
    And request {"id": "12345", "username": "ishuji"}
    When method PUT
    Then status 200
    And print response