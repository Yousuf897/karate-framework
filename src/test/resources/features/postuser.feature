@Users
Feature: Testing create user

  Background:
    Given url "http://localhost:3000"
    Given path "/api/students"
    * def emailUtility = Java.type('utilities.GenerateRandomEmails')
    * def randomEmail = emailUtility.generateRandomEmail()
    * def studentName = "Jack"

  @users_4
  Scenario: Validate the GET users from https://jsonplaceholder.typicode.com/users
    And request
    """
     {
        "name": "#(studentName)",
        "email": "#(randomEmail)"
      }
    """
    And print randomEmail
    When method post
    Then status 201
    And match response != null
#    And match response.name == "Tony"
    And match response.name == studentName
    And match response.email == randomEmail

