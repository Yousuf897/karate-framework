@Users
Feature: Testing create user

  Background:
    Given url "http://localhost:3000"
    Given path "/api/students"

  @users_1
  Scenario: Validate the GET users from https://jsonplaceholder.typicode.com/users
    And request { "name": "Tony", "email": "tony@gmail.com" }
    When method post
    Then status 201
    And match response != null

