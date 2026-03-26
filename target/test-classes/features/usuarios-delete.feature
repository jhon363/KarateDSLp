Feature: Usuarios API - Eliminar usuario

  Background:
    * url 'https://serverest.dev/'
    * def usuario = call read('usuarios-post.feature@Registrar un nuevo usuario con datos válidos')
    * def userId = usuario._id

  Scenario: Eliminar usuario existente
    Given path 'usuarios', userId
    When method delete
    Then status 405
    And match response.message contains 'No es posible realizar DELETE em /usuarios'

  Scenario: Eliminar usuario con ID inexistente
    Given path 'usuarios', 'id-invalido-123'
    When method delete
    Then status 200
    And match response.message == 'Ningún registro eliminado'