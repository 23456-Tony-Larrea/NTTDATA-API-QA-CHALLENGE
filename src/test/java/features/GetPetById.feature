Feature: buscar por id la mascota
  Background:
    * def urlBase = 'https://petstore.swagger.io/v2'
    * def petPath = '/pet'
    * def petId = '9223372016900013808'

    Scenario: buscar por id la mascota
      Given url urlBase + petPath + '/' + petId
      When method get
      Then status 200