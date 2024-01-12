Feature: Consultar la mascota por estatus y filtrar por nombre

  Background:
    * def urlBase = 'https://petstore.swagger.io/v2'
    * def petPath = '/pet'
    * def petStatusEndpoint = '/findByStatus?status='
    * def petStatusSold = 'sold'

  Scenario: Consultar la mascota con estatus y filtrar por nombre
    Given url urlBase + petPath + petStatusEndpoint + petStatusSold
    When method get
    Then status 200
    * def pets = response
    * def filteredPet = karate.filter(pets, function(pet){ return pet.name == 'junior-toby' })
    * print filteredPet