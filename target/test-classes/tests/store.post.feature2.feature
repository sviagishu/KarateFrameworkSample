Feature: POST call - if your json file and feature are in different package

 Scenario: Read request body data file from json which is in differenct package
    Given url 'https://petstore.swagger.io/v2/user'
    And def projectPath = karate.properties['user.dir']   
     #To get the project path
    And print projectPath
    And def filePath = projectPath+'/src/test/java/files/request2.json' 
    And def filePath = '/KarateFramework/src/test/java/files/request2.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 200
    And print response
    And match $ == expectedOutput
    
  
  
       
