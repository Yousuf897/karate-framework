@Users
Feature: Testing users endpoint API

  Background:
    Given url "https://jsonplaceholder.typicode.com"
    Given path "/users"

  @users_1
  Scenario: Validate the GET users from https://jsonplaceholder.typicode.com/users
    When method get
    Then status 200

    @users_2
  Scenario: Validate the GET users endpoint and check that the response is not null
    When method get
    Then status 200
    And match response != null

    @users_3
  Scenario: Print the result of the GET users endpoint and check that the response is not null
    When method get
    Then status 200
    And match response != null
    And print response
