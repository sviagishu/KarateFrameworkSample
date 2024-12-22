Feature: Get Call

Background:
  * url 'https://petstore.swagger.io/'
  * header Accept = 'application/json'
  
  #Get without Backgound
  #Scenario: Testing Sample API
    #Given url 'https://reqres.in/api/users?'
    #And param page = 2
    #When method GET
    #Then status 200
    #And print response
    #And print responseStatus
    #And print responseTime
    #And print responseHeaders
    #And print responseCookies
    
  #Get with Background 
  Scenario: Testing Store API with Background
    Given path 'v2/user/jii'
    When method GET
    Then status 200  
    And print response
   
  #Get with Assertion Validation 
  @sample
  Scenario: Testing Store API with assertion
     Given path 'v2/user/jii'
     When method GET
     Then status 200  
     And print response
     And match response.id != null
     And match response.password != null
     #And assert response.length == 1 # only for Array
     And match response.username == 'jii'
     And match $.userStatus == 0
     
     
     
  
  
  
    
    
  
