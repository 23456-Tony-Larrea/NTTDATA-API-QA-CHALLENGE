Feature: Agregar una mascota en swagger
    Background:
      * def urlBase = 'https://petstore.swagger.io/v2'
      * def petPath = '/pet'

Scenario: Agregar una mascota
    Given url urlBase + petPath
    And request { "id": 0, "category": { "id": 0, "name": "string" }, "name": "junior1", "photoUrls": [ "string" ], "tags": [ { "id": 0, "name": "string" } ], "status": "available" }
    When method post
    Then status 200
  And match response.name == "junior1"
  And match response.status == "available"
