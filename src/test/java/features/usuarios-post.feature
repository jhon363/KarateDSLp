Feature: Usuarios API - Registrar usuario

  Background:
    * url 'https://serverest.dev/'

  Scenario: Registrar un nuevo usuario con datos válidos
    Given path 'usuarios'
    * def random = Math.floor(Math.random()*10000)
    * def email = 'usuario.qa.' + random + '@mail.com'
    And request { nome: 'Usuario QA', email: email, password: '123456', administrador: 'true' }
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'
    And match response._id != null

  Scenario: Registrar usuario con email existente
    * def random = Math.floor(Math.random()*10000)
    * def email = 'usuario.existente.' + random + '@mail.com'
    Given path 'usuarios'
    And request { nome: 'Usuario Existente', email: email, password: '123456', administrador: 'true' }
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'
    And match response._id != null
    # Intentar registrar de nuevo con el mismo email
    Given path 'usuarios'
    And request { nome: 'Usuario Existente', email: email, password: '123456', administrador: 'true' }
    When method post
    Then status 400
    And match response.message == 'Este email ya está siendo usado'