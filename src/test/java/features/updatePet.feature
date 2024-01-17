Feature: Actualizar el nombre de la mascota y el estatus de la mascota a “sold”

  Background:
    * def urlBase = 'https://petstore.swagger.io/v2'
    * def petPath = '/pet'
    * def petId = '9223372036854767921'
  Scenario: Actualizar el nombre de la mascota y el estatus de la mascota a “sold”
        Given url urlBase + petPath + '/' + petId
        And param petId = petId
        And param name = 'junior-toby'
        And param status = 'sold'
        When method post
        Then status 200
        And match response == {code: 200, type: 'unknown', message: '#notnull'}


