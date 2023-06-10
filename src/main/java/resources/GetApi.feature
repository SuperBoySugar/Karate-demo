Feature: Get API Demo


  Background:
    * url 'https://reqres.in/api'
    * headers Accept = ''application/json''
  Scenario: Get Demo1
    Given path 'https://reqres.in/api'
    When  method Get
    Then status 200
    And print response
    And print response status


    Scenario:  Get Demo2
      Given path 'https://reqres.in/api'
      When  method Get
      Then status 200
      And match response.data[0].name == 'cerulean'
      And match reponse.data.length == 10
