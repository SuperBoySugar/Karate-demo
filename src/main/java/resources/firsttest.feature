Feature: Sample api Tests

  Scenario: Test a sample Get API

    Given url 'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200