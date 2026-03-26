Feature: Acceso - Autenticación de usuario

  Background:
    * url 'https://serverest.dev/'

  Scenario: Login exitoso
    Given path 'acesso'
    And request { email: 'fulano@qa.com', password: 'teste' }
    When method post
    Then status 200
    And match response.message == 'Login realizado com sucesso'
    And match response.authorization startsWith 'Bearer '

  Scenario: Login fallido
    Given path 'acesso'
    And request { email: 'fulano@qa.com', password: 'incorrecto' }
    When method post
    Then status 401
    And match response.message == 'Email  son inválidos'
