Feature: POST call

  Background: 
    * def expectedOutput = read('response1.json') 
     # if your file & feature are in same folder

  Scenario: Method 1 - Getting 200 response in POST call
    Given url 'https://petstore.swagger.io/v2/user'
    And request {"id": "110702", "username": "jii", "firstName": "ishwarya", "lastName": "sekar", "email": "ishujk@gmail.com", "password": "ishujiii", "phone": "987654321", "userStatus": 0}
    When method POST
    Then status 200
    And print response
    # matching entire response
    And match response == {"code": 200, "type": "unknown", "message": "#string"}

  Scenario: Method 2 - Matching response with json file for POST call
    Given url 'https://petstore.swagger.io/v2/user'
    And request {"id": "110702", "username": "jii", "firstName": "ishwarya", "lastName": "sekar", "email": "ishujk@gmail.com", "password": "ishujiii", "phone": "987654321", "userStatus": 0}
    When method POST
    Then status 200
    And print response
    And match response == expectedOutput  
    # if your file & feature are in same folder
    
  Scenario: Method 3 - Read request body data from file
    Given url 'https://petstore.swagger.io/v2/user'
    And def requestBody = read('request1.json')    
    # if your file & feature are in same folder
    And request requestBody
    When method POST
    Then status 200
    And print response
    And match $ == expectedOutput
    
  Scenario: Method 4 - Changing the value of the request body
    Given url 'https://petstore.swagger.io/v2/user'
    And def requestBody = read('request1.json')  
    And set requestBody.id  = '110201'  
    And request requestBody
    When method POST
    Then status 200
    And print response
 
   
   
