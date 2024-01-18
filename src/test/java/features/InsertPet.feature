Feature: Agregar una mascota en swagger
    Background:
      * def urlBase = 'https://petstore.swagger.io/v2'
      * def petPath = '/pet'
      * def jsonData = read('classpath:JSON/Pet.json')

  Scenario: Agregar una mascota
    Given url urlBase + petPath
    And request jsonData
    When method post
    Then status 200
  And match response.name == "doggie"
  And match response.status == "available"