Feature: Agregar una mascota en swagger, buscarla por id y actualizarla
  Background:
    * def urlBase = 'https://petstore.swagger.io/v2'
    * def petPath = '/pet'
    * def jsonData = read('classpath:JSON/Pet.json')

  Scenario: Agregar una mascota, buscarla por id y actualizarla
    Given url urlBase + petPath
    And request jsonData
    When method post
    Then status 200
    And match response.name == "doggie"
    And match response.status == "available"
    * def id = response.id

    Given url urlBase + petPath + '/' + id
    When method get
    Then status 200
    And match response.id == id

    * def updatedPet = { id: #(id), name: 'junior-toby', status: 'sold' }
    Given url urlBase + petPath
    And request updatedPet
    When method put
    Then status 200
    And match response.id == id
    And match response.name == 'junior-toby'
    And match response.status == 'sold'