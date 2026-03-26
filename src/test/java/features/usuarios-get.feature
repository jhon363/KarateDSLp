Feature: Usuarios API - Listar usuarios

  Background:
    * url 'https://serverest.dev/'

  Scenario: Obtener lista de todos los usuarios
    Given path 'usuarios'
    When method get
    Then status 200
    And match response.usuarios == '#[]'
    And match response.quantidade >= 0
    And match response == { usuarios: '#[]', quantidade: '#number', total: '#number', skip: '#number', limit: '#number' }

  Scenario: Obtener lista de usuarios con parámetros inválidos
    Given path 'usuarios'
    And param limit = -1
    When method get
    Then status 400
    And match response.message contains 'limit'