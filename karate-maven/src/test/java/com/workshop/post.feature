Feature: Making a POST Request

  Scenario: Create a new user
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { "title":"foo", "body":"bar", "userId":1 }
    When method POST
    Then status 201
    And match response == { "title": "foo", "body": "bar", "userId": 1, "id": 101 }
