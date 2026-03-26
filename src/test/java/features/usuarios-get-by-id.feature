Feature: Usuarios API - Buscar usuario por ID

  Background:
    * url 'https://serverest.dev/'
    * def usuario = call read('usuarios-post.feature@Registrar un nuevo usuario con datos válidos')
    * def userId = usuario._id

  Scenario: Buscar usuario existente por ID
    Given path 'usuarios', userId
    When method get
    Then status 400
    And match response.message contains 'Usuario no encontrado'

  Scenario: Buscar usuario con ID inexistente
    Given path 'usuarios', 'id-invalido-123'
    When method get
    Then status 400
    And match response.message contains 'Usuario no encontrado'