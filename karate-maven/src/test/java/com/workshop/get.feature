Feature: Create a new record

  Scenario: Create a new record via API
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method GET
    Then status 200
    And print response
