Feature: Usuarios API - Actualizar usuario

  Background:
    * url 'https://serverest.dev/'
    * def usuario = call read('usuarios-post.feature@Registrar un nuevo usuario con datos válidos')
    * def userId = usuario._id

  Scenario: Actualizar información de usuario existente
    Given path 'usuarios', userId
    * def random = Math.floor(Math.random()*10000)
    * def email = 'usuario.qa.actualizado.' + random + '@mail.com'
    And request { nome: 'Usuario QA Actualizado', email: email, password: '654321', administrador: 'false' }
    When method put
    Then status 405
    And match response.message contains 'No es posible realizar PUT en /usuarios'

  Scenario: Actualizar usuario con ID inexistente
    Given path 'usuarios', 'id-invalido-123'
    And request { nome: 'Usuario QA', email: 'usuario.qa@mail.com', password: '123456', administrador: 'true' }
    When method put
    Then status 201
    And match response.message == 'Proceso realizado con éxito'